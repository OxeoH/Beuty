package by.beaty.place.controller;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.CustomUserDetails;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/appointment")
@RequiredArgsConstructor
public class AppointmentController {

    private final AppointmentServiceApi appointmentService;
    private final CategoryServiceApi categoryService;

    //TODO Перейти на использование DTO
    @GetMapping("/")
    public String calendarAppointmentPage(Model model) {
        String username = getCurrentUsername();

        List<Appointment> appointmentList = appointmentService.getAppointmentByUsername(username);
        List<Category> categoryList = categoryService.getAll();

        String currentDate = getCurrentDate();
        model.addAttribute("currentDate", currentDate);

        model.addAttribute("appointments", appointmentList);
        model.addAttribute("categoryList", categoryList);

        return "user/calendarPage";
    }

    //TODO Перейти на использование DTO
    @GetMapping("/category/{idCategory}")
    public String calendarAppointmentUserByCategory(@PathVariable("idCategory") Long idCategory, Model model) {
        String username = getCurrentUsername();

        Category category = Category.builder()
                .id(idCategory)
                .build();
        List<Appointment> appointmentList = appointmentService.getAppointmentByUsernameAndCategory(username, category);
        List<Category> categoryList = categoryService.getAll();

        String currentDate = getCurrentDate();
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("appointments", appointmentList);
        model.addAttribute("categoryList", categoryList);

        return "user/calendarPage";
    }

    @PostMapping("/create")
    public String createAppointment(@RequestParam("idles") Long idCategory,
            @RequestParam("master") Long idMaster,
            @RequestParam("time") Long idSlot,
            @RequestParam("price") BigDecimal price) {
        Long currentIdUser = getCurrentIdUser();
        AppointmentRequestDto appointmentRequestDto = AppointmentRequestDto.builder()
                .categoryId(idCategory)
                .masterId(idMaster)
                .slotId(idSlot)
                .clientId(currentIdUser)
                .price(price)
                .build();
        Appointment appointment = appointmentService.createAppointment(appointmentRequestDto);
        if (appointment != null) {
            return "redirect:/appointment/";
        } else {
            return "redirect:/";
        }
    }

    @GetMapping("/create/page")
    public String createAppointmentPage(Model model) {
        List<Category> categoryList = categoryService.getAll();

        String currentDate = getCurrentDate();
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("categoryList", categoryList);

        return "user/appointmentCardPage";
    }

    @GetMapping("/{appointmentId}")
    public String appointmentCardPage(@PathVariable("appointmentId") Long appointmentId, Model model) {
        String username = getCurrentUsername();
        boolean hasAppointmentByUsername = appointmentService.hasAppointmentByUsername(appointmentId, username);
        if (hasAppointmentByUsername) {
            Appointment appointmentById = appointmentService.getById(appointmentId);
            String currentDate = getCurrentDate();
            List<Category> categoryList = categoryService.getAll();
            model.addAttribute("appointment", appointmentById);
            model.addAttribute("currentDate", currentDate);
            model.addAttribute("categoryList", categoryList);
            return "user/appointmentCardPage";
        }
        return "redirect:/appointment/?not_found";
    }

    private static String getCurrentUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }

    private static Long getCurrentIdUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
        return userDetails.getId();
    }

    private static String getCurrentDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(new Date());
    }
}

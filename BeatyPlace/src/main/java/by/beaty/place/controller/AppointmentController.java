package by.beaty.place.controller;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.CustomUserDetails;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.SalonReviewsServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.SalonReviewDto;
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
    private final SalonReviewsServiceApi salonReviewsService;


    //TODO Перейти на использование DTO
    @GetMapping("/")
    public String calendarAppointmentPage(@RequestParam(required = false, name = "not_found") String notFound, Model model) {
        String username = getCurrentUsername();

        List<Appointment> appointmentList = appointmentService.getAppointmentByUsername(username);
        List<Category> categoryList = categoryService.getAll();

        String currentDate = getCurrentDate();
        model.addAttribute("currentDate", currentDate);

        model.addAttribute("appointments", appointmentList);
        model.addAttribute("categoryList", categoryList);

        if (notFound != null) {
            model.addAttribute("notFound", "notFoundMessage");
        }

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
            @RequestParam("price") BigDecimal price,
            @RequestParam(required = false, name = "notes") String notes) {
        Long currentIdUser = getCurrentIdUser();
        AppointmentRequestDto appointmentRequestDto = AppointmentRequestDto.builder()
                .categoryId(idCategory)
                .masterId(idMaster)
                .slotId(idSlot)
                .clientId(currentIdUser)
                .price(price)
                .notes(notes)
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
        Long currentIdUser = getCurrentIdUser();
        boolean hasUserAppointmentById = appointmentService.hasAppointmentByClientId(appointmentId, currentIdUser);
        if (hasUserAppointmentById) {
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

    @GetMapping("/master/{appointmentId}")
    public String appointmentCardForMasterPage(@PathVariable("appointmentId") Long appointmentId, Model model) {
        Long currentIdUser = getCurrentIdUser();
        boolean hasMasterAppointmentById = appointmentService.hasMasterAppointmentById(appointmentId, currentIdUser);
        if (hasMasterAppointmentById) {
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

    @PostMapping("/create/note/{appointmentId}")
    public String createNoteAppointment(@PathVariable("appointmentId") Long idAppointment, @RequestParam("notes") String notes) {
        Long currentIdUser = getCurrentIdUser();
        if (appointmentService.hasAppointmentByClientId(idAppointment, currentIdUser)) {
            appointmentService.createNoteAppointment(idAppointment, notes);
            return String.format("redirect:/appointment/%s", idAppointment);
        }

        return "redirect:/appointment/?not_found";
    }

    @PostMapping("/create/feedback/salon")
    public String feedbackSalon(@RequestParam("rating") Integer rating, @RequestParam("comment") String comment) {
        Long currentIdUser = getCurrentIdUser();
        SalonReviewDto salonReview = SalonReviewDto
                .builder()
                .rating(rating)
                .clientId(currentIdUser)
                .comment(comment)
                .build();

        salonReviewsService.createSalonReview(salonReview);

        return "redirect:/";
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

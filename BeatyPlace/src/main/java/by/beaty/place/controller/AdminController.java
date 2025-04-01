package by.beaty.place.controller;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.AppointmentStaticsServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import java.util.List;
import java.util.Random;
import java.util.function.Supplier;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/")
@RequiredArgsConstructor
public class AdminController {

    private final AppointmentStaticsServiceApi appointmentStaticsService;
    private final CategoryServiceApi categoryService;
    private final AppointmentServiceApi appointmentService;

    @GetMapping("/")
    public String adminHome(Model model) {
        model.addAttribute("clientToday", appointmentStaticsService.countClientsForToday());
        model.addAttribute("clientLastMonth", appointmentStaticsService.countClientsForLastMonth());
        model.addAttribute("totalEarnToday", appointmentStaticsService.getTotalEarningsForToday());
        model.addAttribute("totalEarnLastMonth", appointmentStaticsService.getTotalEarningsForLastMonth());

        List<Category> categoryList = categoryService.getAll();
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("randomSupplier", (Supplier<Integer>) () -> (new Random().nextInt(40, 101) / 10) * 10);

        model.addAttribute("lastAppointment", appointmentService.getLast10AppointmentInCurrentMonth());

        return "admin/home";
    }

    @GetMapping("/appointments")
    public String appointmentList(Model model) {
        List<Appointment> appointmentList = appointmentService.getAll();
        model.addAttribute("appointmentList", appointmentList);
        return "admin/listAppointment";
    }

    @PostMapping("/update/status")
    public String updateStatus(@RequestParam("id") Long idAppointment, @RequestParam("status") String status) {
        appointmentService.updateStatus(idAppointment, AppointmentStatus.valueOf(status));
        return "redirect:/admin/appointments";
    }
}

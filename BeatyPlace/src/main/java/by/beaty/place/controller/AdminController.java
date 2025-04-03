package by.beaty.place.controller;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.model.common.Role;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.AppointmentStaticsServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.UserServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.dto.WorkScheduleDto;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;
import java.util.Random;
import java.util.function.Supplier;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//TODO Тесты
@Controller
@RequestMapping("/admin/")
@RequiredArgsConstructor
public class AdminController {

    private final AppointmentStaticsServiceApi appointmentStaticsService;
    private final CategoryServiceApi categoryService;
    private final AppointmentServiceApi appointmentService;
    private final UserServiceApi userService;
    private final WorkScheduleServiceApi workScheduleService;

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

    @GetMapping("/master/list")
    public String masterList(Model model) {
        List<UserRequestDto> mastersList = userService.getAllMasters();
        List<Category> categoryList = categoryService.getAll();
        model.addAttribute("mastersList", mastersList);
        model.addAttribute("categoryList", categoryList);

        return "admin/listMaster";
    }

    @PostMapping("/master/add/category")
    public String masterAddCategory(@RequestParam("id") Long idMaster, @RequestParam("categoryId") Long idCategory) {
        Category category = Category.builder()
                .id(idCategory)
                .build();
        UserRequestDto request = UserRequestDto.builder()
                .id(idMaster)
                .categoryList(List.of(category))
                .build();

        userService.updateCategoryUser(request);
        return "redirect:/admin/master/list";
    }

    @GetMapping("/workschedule/master/{id}")
    public String workScheduleMaster(@PathVariable("id") Long idMaster, Model model) {
        List<WorkScheduleDto> workScheduleByMaster = workScheduleService.findByMasterAndDateBetween(idMaster);
        model.addAttribute("workSchedules", workScheduleByMaster);
        model.addAttribute("idMaster", idMaster);
        return "admin/scheduleMaster";
    }

    @PostMapping("/workschedule/master/{id}/create")
    public String createWorkScheduleMaster(@PathVariable("id") Long idMaster,
            @RequestParam("date") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date,
            @RequestParam("startTime") @DateTimeFormat(pattern = "HH:mm") LocalTime startTime,
            @RequestParam("endTime") @DateTimeFormat(pattern = "HH:mm") LocalTime endTime) {
        WorkScheduleDto workScheduleDto = WorkScheduleDto.builder()
                .date(date)
                .startTime(startTime)
                .endTime(endTime)
                .build();
        workScheduleService.createWorkSchedule(idMaster, workScheduleDto);
        return "redirect:/admin/workschedule/master/" + idMaster;
    }

    @GetMapping("/users/list")
    public String userList(Model model) {
        List<UserRequestDto> userList = userService.getAllUsers();
        model.addAttribute("userList", userList);
        return "admin/listUser";
    }

    @PostMapping("/users/block/{id}")
    public String blockUser(@PathVariable("id") Long idUser, @RequestParam("reason") String reason,
            @RequestParam("datetime") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") LocalDateTime dateTime) {
        userService.blockUser(idUser, 23L, dateTime, reason);
        return "redirect:/admin/users/list";
    }

    @PostMapping("/users/unblock/{id}")
    public String unblockUser(@PathVariable("id") Long idUser) {
        userService.unblockUser(idUser);
        return "redirect:/admin/users/list";
    }

    @GetMapping("/users/appointments/{id}")
    public String usersAppointments(@PathVariable("id") Long userId, Model model) {
        List<Appointment> allByUserId = appointmentService.getAllByUserId(userId);
        model.addAttribute("appointmentList", allByUserId);
        return "admin/listAppointment";
    }

    @PostMapping("/users/update/role")
    public String updateRoleUser(@RequestParam("id") Long idUser, @RequestParam("role") String role) {
        UserRequestDto requestDto = UserRequestDto.builder()
                .role(Role.valueOf(role))
                .build();
        userService.updateUser(idUser, requestDto);
        return "redirect:/admin/users/list";
    }
}

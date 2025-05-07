package by.beaty.place.controller;

import static org.hamcrest.Matchers.hasSize;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Contact;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.AppointmentStaticsServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.ContactServiceApi;
import by.beaty.place.service.api.ExcelExporterApi;
import by.beaty.place.service.api.SalonReviewsServiceApi;
import by.beaty.place.service.api.UserServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.SalonReviewDto;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.dto.WorkScheduleDto;
import java.io.ByteArrayInputStream;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class AdminControllerTest {

    private MockMvc mockMvc;

    @InjectMocks
    private AdminController adminController;

    @Mock
    private AppointmentStaticsServiceApi appointmentStaticsService;
    @Mock
    private CategoryServiceApi categoryService;
    @Mock
    private AppointmentServiceApi appointmentService;
    @MockBean
    private UserServiceApi userService;
    @Mock
    private WorkScheduleServiceApi workScheduleService;
    @Mock
    private SalonReviewsServiceApi salonReviewsService;
    @Mock
    private ExcelExporterApi excelExporter;
    @Mock
    private ContactServiceApi contactService;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(adminController).build();
    }

    @Test
    void shouldReturnAdminHomePageWithModelAttributes() throws Exception {
        // GIVEN
        when(appointmentStaticsService.countClientsForToday()).thenReturn(5L);
        when(appointmentStaticsService.countClientsForLastMonth()).thenReturn(25L);
        when(appointmentStaticsService.getTotalEarningsForToday()).thenReturn(200.0);
        when(appointmentStaticsService.getTotalEarningsForLastMonth()).thenReturn(1500L);
        when(categoryService.getAll()).thenReturn(List.of(new Category()));
        when(appointmentService.getLast10AppointmentInCurrentMonth()).thenReturn(List.of());

        // WHEN | THEN
        mockMvc.perform(get("/admin/"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/home"))
                .andExpect(model().attributeExists(
                        "clientToday",
                        "clientLastMonth",
                        "totalEarnToday",
                        "totalEarnLastMonth",
                        "categoryList",
                        "randomSupplier",
                        "lastAppointment"
                ));
    }

    @Test
    void shouldReturnAppointmentListPageWithAppointments() throws Exception {
        // GIVEN
        Appointment mockAppointment = Appointment.builder().id(1L).build();
        when(appointmentService.getAll()).thenReturn(List.of(mockAppointment));

        // WHEN | THEN
        mockMvc.perform(get("/admin/appointments"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/listAppointment"))
                .andExpect(model().attributeExists("appointmentList"))
                .andExpect(model().attribute("appointmentList", hasSize(1)));
    }

    @Test
    void shouldUpdateStatusAndRedirect() throws Exception {
        // GIVEN
        Long appointmentId = 1L;
        String status = "CONFIRMED";

        // WHEN | THEN
        mockMvc.perform(post("/admin/update/status")
                        .param("id", appointmentId.toString())
                        .param("status", status))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/appointments"));

        verify(appointmentService).updateStatus(appointmentId, AppointmentStatus.CONFIRMED);
    }

    @Test
    void shouldReturnMasterListViewWithAttributes() throws Exception {
        // GIVEN
        List<UserRequestDto> mockMasters = List.of(new UserRequestDto());
        List<Category> mockCategories = List.of(new Category());

        when(userService.getAllMasters()).thenReturn(mockMasters);
        when(categoryService.getAll()).thenReturn(mockCategories);

        // WHEN | THEN
        mockMvc.perform(get("/admin/master/list"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/listMaster"))
                .andExpect(model().attribute("mastersList", mockMasters))
                .andExpect(model().attribute("categoryList", mockCategories));

        verify(userService).getAllMasters();
        verify(categoryService).getAll();
    }

    @Test
    void shouldReturnFeedbackMasterViewWithMasterInModel() throws Exception {
        // GIVEN
        Long masterId = 1L;
        Users mockUser = Users.builder().id(masterId).fullName("Test").build();

        when(userService.getUserById(masterId)).thenReturn(mockUser);

        // WHEN | THEN
        mockMvc.perform(get("/admin/master/feedback/{id}", masterId))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/feedbackMaster"))
                .andExpect(model().attribute("master", mockUser));

        verify(userService).getUserById(masterId);
    }

    @Test
    void shouldAddCategoryToMasterAndRedirectToMasterList() throws Exception {
        // GIVEN
        Long idMaster = 1L;
        Long idCategory = 2L;

        // WHEN | THEN
        mockMvc.perform(post("/admin/master/add/category")
                        .param("id", String.valueOf(idMaster))
                        .param("categoryId", String.valueOf(idCategory)))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/master/list"));

        ArgumentCaptor<UserRequestDto> captor = ArgumentCaptor.forClass(UserRequestDto.class);
        verify(userService).updateCategoryUser(captor.capture());

        UserRequestDto capturedRequest = captor.getValue();
        assertEquals(idMaster, capturedRequest.getId());
        assertNotNull(capturedRequest.getCategoryList());
        assertEquals(1, capturedRequest.getCategoryList().size());
        assertEquals(idCategory, capturedRequest.getCategoryList().get(0).getId());
    }

    @Test
    void shouldReturnWorkSchedulePageWithModelAttributes() throws Exception {
        // GIVEN
        Long masterId = 1L;
        List<WorkScheduleDto> scheduleList = List.of(
                WorkScheduleDto.builder().date(LocalDate.now()).build(),
                WorkScheduleDto.builder().date(LocalDate.now().plusDays(1)).build()
        );

        given(workScheduleService.findByMasterAndDateBetween(masterId)).willReturn(scheduleList);

        // WHEN | THEN
        mockMvc.perform(get("/admin/workschedule/master/{id}", masterId))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/scheduleMaster"))
                .andExpect(model().attributeExists("workSchedules"))
                .andExpect(model().attribute("idMaster", masterId))
                .andExpect(model().attribute("workSchedules", scheduleList));

        verify(workScheduleService, times(1)).findByMasterAndDateBetween(masterId);
    }

    @Test
    void shouldCreateWorkScheduleAndRedirect() throws Exception {
        // GIVEN
        Long masterId = 1L;
        String date = "2025-04-15";
        String startTime = "09:00";
        String endTime = "18:00";

        // WHEN | THEN
        mockMvc.perform(post("/admin/workschedule/master/{id}/create", masterId)
                        .param("date", date)
                        .param("startTime", startTime)
                        .param("endTime", endTime))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/workschedule/master/" + masterId));

        verify(workScheduleService, times(1)).createWorkSchedule(eq(masterId), any(WorkScheduleDto.class));
    }

    @Test
    void shouldReturnUserListPageWithModel() throws Exception {
        // GIVEN
        List<UserRequestDto> mockUsers = List.of(new UserRequestDto(), new UserRequestDto());

        given(userService.getAllUsers()).willReturn(mockUsers);

        // WHEN | THEN
        mockMvc.perform(get("/admin/users/list"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/listUser"))
                .andExpect(model().attributeExists("userList"))
                .andExpect(model().attribute("userList", mockUsers));
    }

    @Test
    void shouldBlockUserAndRedirectToUserList() throws Exception {
        // GIVEN
        Long userId = 1L;
        String reason = "Нарушение правил";
        String dateTime = "2025-04-15T10:30";

        // WHEN | THEN
        mockMvc.perform(post("/admin/users/block/{id}", userId)
                        .param("reason", reason)
                        .param("datetime", dateTime))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/users/list"));

        verify(userService, times(1))
                .blockUser(eq(userId), eq(23L), any(LocalDateTime.class), eq(reason));
    }

    @Test
    void shouldUnblockUserAndRedirectToUserList() throws Exception {
        // GIVEN
        Long userId = 1L;

        // WHEN | THEN
        mockMvc.perform(post("/admin/users/unblock/{id}", userId))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/users/list"));

        verify(userService, times(1)).unblockUser(eq(userId));
    }

    @Test
    void shouldReturnUserAppointmentsPageWithModel() throws Exception {
        // GIVEN
        Long userId = 1L;
        List<Appointment> mockAppointments = List.of(new Appointment(), new Appointment());

        given(appointmentService.getAllByUserId(userId)).willReturn(mockAppointments);

        // WHEN | THEN
        mockMvc.perform(get("/admin/users/appointments/{id}", userId))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/listAppointment"))
                .andExpect(model().attributeExists("appointmentList"))
                .andExpect(model().attribute("appointmentList", mockAppointments));
    }

    @Test
    void shouldUpdateUserRoleAndRedirectToUserList() throws Exception {
        // GIVEN
        Long userId = 1L;
        String role = "ADMIN";

        // WHEN | THEN
        mockMvc.perform(post("/admin/users/update/role")
                        .param("id", String.valueOf(userId))
                        .param("role", role))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/users/list"));

        verify(userService, times(1)).updateUser(eq(userId), any(UserRequestDto.class));
    }

    @Test
    void shouldReturnSalonReviewsPageWithModel() throws Exception {
        // GIVEN
        List<SalonReviewDto> mockReviews = List.of(new SalonReviewDto(), new SalonReviewDto());

        given(salonReviewsService.getAllReview()).willReturn(mockReviews);

        // WHEN | THEN
        mockMvc.perform(get("/admin/salon-reviews"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/feedbackSalon"))
                .andExpect(model().attributeExists("salonReviewList"))
                .andExpect(model().attribute("salonReviewList", mockReviews));
    }

    @Test
    void shouldDownloadAppointmentsReport() throws Exception {
        // GIVEN
        ByteArrayInputStream mockReportStream = new ByteArrayInputStream(new byte[0]);
        given(excelExporter.generateAppointmentsReport()).willReturn(mockReportStream);

        // WHEN | THEN
        mockMvc.perform(get("/admin/export/excel"))
                .andExpect(status().isOk())
                .andExpect(content().contentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"))
                .andExpect(header().string("Content-Disposition", "attachment; filename=appointments_report.xlsx"));
    }

    @Test
    void shouldReturnContactsPageWithModel() throws Exception {
        // GIVEN
        List<Contact> mockContacts = List.of(new Contact(), new Contact());

        given(contactService.getAll()).willReturn(mockContacts);

        // WHEH | THEN
        mockMvc.perform(get("/admin/contacts"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/contacts"))
                .andExpect(model().attributeExists("contactList"))
                .andExpect(model().attribute("contactList", mockContacts));
    }
}
package by.beaty.place.controller;

import static org.mockito.Mockito.any;
import static org.mockito.Mockito.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.CustomUserDetails;
import by.beaty.place.model.Users;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.SalonReviewsServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.SalonReviewDto;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class AppointmentControllerTest {

    @Mock
    private AppointmentServiceApi appointmentService;
    @Mock
    private SalonReviewsServiceApi salonReviewsService;
    @Mock
    private CategoryServiceApi categoryService;

    @InjectMocks
    private AppointmentController appointmentController;
    private MockMvc mockMvc;

    private static final Long CATEGORY_ID = 1L;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(appointmentController).build();
        CustomUserDetails userDetails = CustomUserDetails.builder()
                .user(Users.builder()
                        .id(1L)
                        .build())
                .build();
        Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails, null, null);
        SecurityContext securityContext = SecurityContextHolder.createEmptyContext();
        securityContext.setAuthentication(authentication);
        SecurityContextHolder.setContext(securityContext);
    }

    @Test
    void calendarAppointmentPageTest() throws Exception {
        // GIVEN
        List<Appointment> appointmentList = Arrays.asList(new Appointment());
        List<Category> categoryList = Arrays.asList(new Category());
        when(appointmentService.getAppointmentByUsername(anyString())).thenReturn(appointmentList);
        when(categoryService.getAll()).thenReturn(categoryList);

        Authentication authentication = mock(Authentication.class);
        when(authentication.getName()).thenReturn("testuser");
        SecurityContextHolder.getContext().setAuthentication(authentication);

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.get("/appointment/")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(view().name("user/calendarPage"))
                .andExpect(model().attributeExists("appointments", "categoryList", "currentDate"));
    }

    @Test
    void calendarAppointmentUserByCategoryTest() throws Exception {
        // GIVEN
        List<Appointment> appointmentList = Arrays.asList(new Appointment());
        List<Category> categoryList = Arrays.asList(new Category());
        when(appointmentService.getAppointmentByUsernameAndCategory(anyString(), any(Category.class)))
                .thenReturn(appointmentList);
        when(categoryService.getAll()).thenReturn(categoryList);

        Authentication authentication = mock(Authentication.class);
        when(authentication.getName()).thenReturn("testuser");
        SecurityContextHolder.getContext().setAuthentication(authentication);

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.get("/appointment/category/{idCategory}", CATEGORY_ID)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(view().name("user/calendarPage"))
                .andExpect(model().attributeExists("appointments", "categoryList", "currentDate"));
    }

    @Test
    void createAppointment_ShouldRedirectToAppointmentPage_WhenSuccess() throws Exception {
        // GIVEN
        Appointment appointment = new Appointment();
        when(appointmentService.createAppointment(any(AppointmentRequestDto.class))).thenReturn(appointment);

        // WHEN | THEN
        mockMvc.perform(post("/appointment/create")
                        .param("idles", "1")
                        .param("master", "1")
                        .param("time", "1")
                        .param("price", "100.00")
                        .param("notes", "Test notes"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/appointment/"));
    }

    @Test
    void createAppointment_ShouldRedirectToHomePage_WhenFailure() throws Exception {
        // GIVEN
        when(appointmentService.createAppointment(any(AppointmentRequestDto.class))).thenReturn(null);

        // WHEN | THEN
        mockMvc.perform(post("/appointment/create")
                        .param("idles", "1")
                        .param("master", "1")
                        .param("time", "1")
                        .param("price", "100.00")
                        .param("notes", "Test notes"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/"));
    }

    @Test
    void testCreateAppointmentPage() throws Exception {
        // GIVEN
        Category category = new Category();
        List<Category> categoryList = Arrays.asList(category);

        when(categoryService.getAll()).thenReturn(categoryList);

        // WHEN | THEN
        mockMvc.perform(get("/appointment/create/page"))
                .andExpect(status().isOk())
                .andExpect(
                        view().name("user/appointmentCardPage"))
                .andExpect(model().attributeExists("categoryList"))
                .andExpect(model().attribute("categoryList", List.of(
                        category
                )));
    }

    @Test
    void testAppointmentCardPage_Success() throws Exception {
        // GIVEN
        Appointment appointment = Appointment.builder()
                .id(1L)
                .build();
        Category category = new Category();

        when(appointmentService.hasAppointmentByClientId(1L, 1L)).thenReturn(true);
        when(appointmentService.getById(1L)).thenReturn(appointment);
        when(categoryService.getAll()).thenReturn(List.of(category));

        // WHEN | THEN
        mockMvc.perform(get("/appointment/1"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/appointmentCardPage"))
                .andExpect(model().attributeExists("appointment"))
                .andExpect(model().attributeExists("currentDate"))
                .andExpect(model().attributeExists("categoryList"))
                .andExpect(model().attribute("appointment", appointment))
                .andExpect(model().attribute("categoryList", List.of(category)))
                .andReturn();
    }

    @Test
    void testAppointmentCardPage_NotFound() throws Exception {
        // GIVEN
        when(appointmentService.hasAppointmentByClientId(1L, 1L)).thenReturn(false);

        // WHEN | THEN
        mockMvc.perform(get("/appointment/1"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/appointment/?not_found"));
    }

    @Test
    void testCreateNoteAppointment_Success() throws Exception {
        // GIVEN
        Long appointmentId = 1L;
        String notes = "This is a new note";

        when(appointmentService.hasAppointmentByClientId(appointmentId, 1L)).thenReturn(true);

        // WHEN | THEN
        mockMvc.perform(post("/appointment/create/note/{appointmentId}", appointmentId)
                        .param("notes", notes))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/appointment/" + appointmentId));

        verify(appointmentService, times(1)).createNoteAppointment(appointmentId, notes);
    }

    @Test
    void testCreateNoteAppointment_NotFound() throws Exception {
        // GIVEN
        Long appointmentId = 1L;
        String notes = "This is a new note";

        // WHEN | THEN
        when(appointmentService.hasAppointmentByClientId(appointmentId, 1L)).thenReturn(false);

        mockMvc.perform(post("/appointment/create/note/{appointmentId}", appointmentId)
                        .param("notes", notes))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/appointment/?not_found"));
    }

    @Test
    void testFeedbackSalon_Success() throws Exception {
        // GIVEN
        Integer rating = 5;
        String comment = "Great salon!";

        doNothing().when(salonReviewsService).createSalonReview(any(SalonReviewDto.class));

        // WHEN | THEN
        mockMvc.perform(post("/appointment/create/feedback/salon")
                        .param("rating", rating.toString())
                        .param("comment", comment))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/"));

        verify(salonReviewsService, times(1)).createSalonReview(any(SalonReviewDto.class));
    }
}
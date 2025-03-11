package by.beaty.place.controller;

import static org.mockito.Mockito.any;
import static org.mockito.Mockito.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class AppointmentControllerTest {

    @Mock
    private AppointmentServiceApi appointmentService;

    @Mock
    private CategoryServiceApi categoryService;
    @InjectMocks
    private AppointmentController appointmentController;
    private MockMvc mockMvc;

    private static final Long CATEGORY_ID = 1L;
    private static final Long MASTER_ID = 1L;
    private static final Long SLOT_ID = 2L;
    private static final Long CLIENT_ID = 1L;
    private static final BigDecimal PRICE = BigDecimal.valueOf(1000);

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(appointmentController).build();
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
    void createAppointmentTest() throws Exception {
        // GIVEN
        Appointment appointment = new Appointment();
        when(appointmentService.createAppointment(any(AppointmentRequestDto.class))).thenReturn(appointment);

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.post("/appointment/create/{clientId}", CLIENT_ID)
                        .param("idles", CATEGORY_ID.toString())
                        .param("master", MASTER_ID.toString())
                        .param("time", SLOT_ID.toString())
                        .param("price", PRICE.toString())
                        .contentType(MediaType.APPLICATION_FORM_URLENCODED))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/appointment/"));
    }

    @Test
    void createAppointmentFailure() throws Exception {
        // GIVEN
        when(appointmentService.createAppointment(any(AppointmentRequestDto.class))).thenReturn(null);

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.post("/appointment/create/{clientId}", CLIENT_ID)
                        .param("idles", CATEGORY_ID.toString())
                        .param("master", MASTER_ID.toString())
                        .param("time", SLOT_ID.toString())
                        .param("price", PRICE.toString())
                        .contentType(MediaType.APPLICATION_FORM_URLENCODED))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/"));
    }
}
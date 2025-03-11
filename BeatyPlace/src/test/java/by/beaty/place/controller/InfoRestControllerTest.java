package by.beaty.place.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.WorkScheduleDto;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Collections;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class InfoRestControllerTest {

    @Mock
    private CategoryServiceApi categoryServiceApi;
    @Mock
    private WorkScheduleServiceApi workScheduleServiceApi;

    @InjectMocks
    private InfoRestController infoRestController;

    private static final Long CATEGORY_ID = 1L;
    private static final Long MASTER_ID = 1L;
    private static final Long SLOT_ID = 2L;
    private static final LocalDate DATE = LocalDate.now();

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(infoRestController).build();
    }

    @Test
    void getMastersByCategoryTest() throws Exception {
        // GIVEN
        Users master = Users.builder()
                .id(MASTER_ID)
                .fullName("Master Name")
                .build();
        Category category = Category.builder()
                .masters(List.of(master))
                .build();
        when(categoryServiceApi.getById(CATEGORY_ID)).thenReturn(category);

        // THEN | WHEN
        mockMvc.perform(MockMvcRequestBuilders.get("/info/getMastersByCategory/{categoryId}", CATEGORY_ID)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id").value(MASTER_ID))
                .andExpect(jsonPath("$[0].fullName").value("Master Name"));
    }

    @Test
    void getAvailableTimeTest() throws Exception {
        // WHEN
        WorkScheduleDto workScheduleDto = WorkScheduleDto.builder()
                .id(SLOT_ID)
                .build();
        when(workScheduleServiceApi.findAvailableSlots(MASTER_ID, DATE)).thenReturn(Collections.singletonList(workScheduleDto));

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.get("/info/master/slot/available")
                        .param("masterId", MASTER_ID.toString())
                        .param("date", DATE.toString())
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id").value(SLOT_ID));
    }

    @Test
    void getCategoryPriceTest() throws Exception {
        // GIVEN
        BigDecimal categoryPrice = BigDecimal.valueOf(1000);
        when(categoryServiceApi.getCategoryPriceById(CATEGORY_ID)).thenReturn(categoryPrice);

        // WHEN | THEN
        mockMvc.perform(MockMvcRequestBuilders.get("/info/categoryPrice/{categoryId}", CATEGORY_ID)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").value(categoryPrice.intValue()));
    }
}
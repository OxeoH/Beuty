package by.beaty.place.controller;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import by.beaty.place.service.api.ExcelExporterApi;
import java.io.ByteArrayInputStream;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class ReportControllerTest {

    @Mock
    private ExcelExporterApi excelExporter;
    @InjectMocks
    private ReportController reportController;
    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(reportController).build();
    }

    @Test
    void testGenerateAppointmentsReport() throws Exception {
        // GIVEN
        byte[] reportBytes = "some report content" .getBytes();
        ByteArrayInputStream reportStream = new ByteArrayInputStream(reportBytes);
        when(excelExporter.generateAppointmentsReport()).thenReturn(reportStream);

        // WHEN | THEN
        mockMvc.perform(get("/report/appointments"))
                .andExpect(status().is3xxRedirection())
                .andExpect(content().bytes(reportBytes))
                .andExpect(redirectedUrl("/admin/home"));

        verify(excelExporter, times(1)).generateAppointmentsReport();
    }
}
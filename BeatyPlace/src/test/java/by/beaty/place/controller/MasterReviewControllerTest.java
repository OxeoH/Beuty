package by.beaty.place.controller;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import by.beaty.place.service.api.ReviewMasterServiceApi;
import by.beaty.place.service.dto.ReviewMasterDto;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class MasterReviewControllerTest {

    @InjectMocks
    private MasterReviewController masterReviewController;

    @Mock
    private ReviewMasterServiceApi reviewMasterService;

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(masterReviewController).build();
    }

    @Test
    void testCreateReviewMaster_Success() throws Exception {
        // GIVEN
        Long appointmentId = 1L;
        Integer rating = 5;
        String comment = "Excellent service!";

        doNothing().when(reviewMasterService).createReviewMaster(any(ReviewMasterDto.class));

        // WHEN | THEN
        mockMvc.perform(post("/create/review/{appointmentId}", appointmentId)
                        .param("rating", rating.toString())
                        .param("comment", comment))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl(String.format("/appointment/%s",
                        appointmentId)));

        verify(reviewMasterService, times(1)).createReviewMaster(any(ReviewMasterDto.class));
    }
}
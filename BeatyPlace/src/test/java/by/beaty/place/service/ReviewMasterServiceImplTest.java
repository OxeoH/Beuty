package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.kafka.service.api.KafkaSender;
import by.beaty.place.model.Appointment;
import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
import by.beaty.place.repository.ReviewMasterRepository;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.dto.ReviewMasterDto;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class ReviewMasterServiceImplTest {

    @Mock
    private ReviewMasterRepository reviewRepository;
    @Mock
    private AppointmentServiceApi appointmentService;
    @Mock
    private KafkaSender kafkaSender;

    @InjectMocks
    private ReviewMasterServiceImpl reviewMasterService;

    @Test
    void createReviewMaster_ShouldSaveReview() {
        // GIVEN
        ReviewMasterDto reviewMasterDto = ReviewMasterDto.builder()
                .rating(1)
                .comment("comment")
                .createdAt(LocalDateTime.now())
                .build();

        Appointment mockAppointment = Appointment.builder()
                .id(reviewMasterDto.getAppointmentId())
                .client(Users.builder()
                        .id(1L)
                        .build())
                .master(Users.builder()
                        .id(2L)
                        .build())
                .build();

        when(appointmentService.getById(reviewMasterDto.getAppointmentId())).thenReturn(mockAppointment);

        // WHEN
        reviewMasterService.createReviewMaster(reviewMasterDto);

        // THEN
        verify(reviewRepository, times(1)).save(any(Review.class));
        verify(kafkaSender, times(1)).sendNotification(any());
    }

    @Test
    void getAllMyMaster_ShouldReturnListOfReviews() {
        // GIVEN
        Long masterId = 200L;

        Users master = Users.builder()
                .id(masterId)
                .build();
        Users client = Users.builder()
                .id(100L)
                .build();
        Review review1 = Review.builder()
                .id(1L)
                .comment("Отличная работа!")
                .client(client)
                .master(master)
                .build();
        Review review2 = Review.builder()
                .id(2L)
                .comment("Все супер!")
                .client(client)
                .master(master)
                .build();

        List<Review> mockReviews = List.of(review1, review2);

        Mockito.when(reviewRepository.getAllByMaster(Mockito.any(Users.class))).thenReturn(mockReviews);

        // WHEN
        List<ReviewMasterDto> result = reviewMasterService.getAllMyMaster(masterId);

        // THEN
        assertNotNull(result);
        assertEquals(2, result.size());
        assertEquals("Отличная работа!", result.get(0).getComment());
        assertEquals("Все супер!", result.get(1).getComment());
        verify(reviewRepository, times(1)).getAllByMaster(any(Users.class));
    }
}
package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.SalonReview;
import by.beaty.place.model.Users;
import by.beaty.place.repository.SalonReviewRepository;
import by.beaty.place.service.dto.SalonReviewDto;
import by.beaty.place.service.dto.util.SalonReviewMapper;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class SalonReviewsServiceImplTest {

    @Mock
    private SalonReviewRepository salonReviewRepository;

    @InjectMocks
    private SalonReviewsServiceImpl salonReviewService;

    @Test
    void getAllReview_ShouldReturnListOfSalonReviewDto() {
        // GIVEN
        SalonReview review1 = SalonReview.builder()
                .id(1L)
                .client(Users.builder()
                        .id(1L)
                        .build())
                .comment("Отличный сервис")
                .rating(5)
                .build();
        SalonReview review2 = SalonReview.builder()
                .id(2L)
                .client(Users.builder()
                        .id(1L)
                        .build())
                .comment("Хороший салон")
                .rating(4)
                .build();

        List<SalonReview> reviewList = Arrays.asList(review1, review2);

        when(salonReviewRepository.findAll()).thenReturn(reviewList);

        // WHEN
        List<SalonReviewDto> result = salonReviewService.getAllReview();

        // THEN
        assertEquals(2, result.size());
        assertEquals("Отличный сервис", result.get(0).getComment());
        assertEquals(5, result.get(0).getRating());
        assertEquals("Хороший салон", result.get(1).getComment());
        assertEquals(4, result.get(1).getRating());

        verify(salonReviewRepository, times(1)).findAll();
    }

    @Test
    void createSalonReview_ShouldSaveReview() {
        // GIVEN
        SalonReviewDto salonReviewDto = SalonReviewDto.builder()
                .comment("Отличный сервис")
                .rating(5)
                .build();
        SalonReview salonReview = SalonReviewMapper.fromDto(salonReviewDto);
        salonReview.setCreatedAt(LocalDateTime.now());

        // WHEN
        salonReviewService.createSalonReview(salonReviewDto);

        // THEN
        verify(salonReviewRepository, times(1)).save(any(SalonReview.class));
    }
}
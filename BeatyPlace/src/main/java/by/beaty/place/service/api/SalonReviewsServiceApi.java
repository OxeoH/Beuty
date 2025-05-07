package by.beaty.place.service.api;

import by.beaty.place.service.dto.SalonReviewDto;
import java.util.List;

public interface SalonReviewsServiceApi {

    List<SalonReviewDto> getAllReview();

    void createSalonReview(SalonReviewDto salonReviewDto);
}

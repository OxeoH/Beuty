package by.beaty.place.service.dto.util;

import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
import by.beaty.place.service.dto.ReviewMasterDto;
import java.time.LocalDateTime;
import lombok.experimental.UtilityClass;

@UtilityClass
public class MasterReviewMapper {

    public static ReviewMasterDto fromEntity(Review review) {
        return ReviewMasterDto.builder()
                .clientId(review.getClient().getId())
                .comment(review.getComment())
                .createdAt(review.getCreatedAt())
                .rating(review.getRating())
                .build();
    }

    public static Review fromDto(ReviewMasterDto reviewMasterDto) {
        return Review.builder()
                .rating(reviewMasterDto.getRating())
                .comment(reviewMasterDto.getComment())
                .createdAt(LocalDateTime.now())
                .build();
    }

}

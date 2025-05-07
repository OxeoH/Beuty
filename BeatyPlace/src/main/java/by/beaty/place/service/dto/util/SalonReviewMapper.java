package by.beaty.place.service.dto.util;

import by.beaty.place.model.SalonReview;
import by.beaty.place.model.Users;
import by.beaty.place.service.dto.SalonReviewDto;
import lombok.experimental.UtilityClass;

@UtilityClass
public class SalonReviewMapper {

    public static SalonReviewDto fromEntity(SalonReview salonReview) {
        return SalonReviewDto.builder()
                .id(salonReview.getId())
                .clientId(salonReview.getClient().getId())
                .comment(salonReview.getComment())
                .rating(salonReview.getRating())
                .createdAt(salonReview.getCreatedAt())
                .build();
    }

    public static SalonReview fromDto(SalonReviewDto salonReviewDto) {
        return SalonReview.builder()
                .rating(salonReviewDto.getRating())
                .client(Users.builder()
                        .id(salonReviewDto.getClientId())
                        .build())
                .comment(salonReviewDto.getComment())
                .build();
    }
}

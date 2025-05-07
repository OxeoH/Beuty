package by.beaty.place.service.dto;

import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class SalonReviewDto {

    private Long id;
    private Long clientId;
    private int rating;
    private String comment;
    private LocalDateTime createdAt = LocalDateTime.now();
}

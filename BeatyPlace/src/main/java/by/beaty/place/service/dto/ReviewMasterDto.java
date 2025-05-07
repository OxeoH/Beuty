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
public class ReviewMasterDto {

    private Long id;
    private Long appointmentId;
    private Long clientId;
    private Long masterId;
    private int rating;
    private String comment;
    private LocalDateTime createdAt;
}

package by.beaty.place.service.dto;

import java.math.BigDecimal;
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
public class AppointmentRequestDto {

    private Long categoryId;
    private Long masterId;
    private Long slotId;
    private Long clientId;
    private BigDecimal price;

}

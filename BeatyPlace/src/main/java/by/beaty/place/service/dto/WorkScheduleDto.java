package by.beaty.place.service.dto;

import java.time.LocalDate;
import java.time.LocalTime;
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
public class WorkScheduleDto {
    private Long id;

    private LocalDate date;

    private LocalTime startTime;

    private LocalTime endTime;
}

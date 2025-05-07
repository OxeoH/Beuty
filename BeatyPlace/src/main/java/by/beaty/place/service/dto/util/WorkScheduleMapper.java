package by.beaty.place.service.dto.util;

import by.beaty.place.model.WorkSchedule;
import by.beaty.place.service.dto.WorkScheduleDto;
import lombok.experimental.UtilityClass;

@UtilityClass
public class WorkScheduleMapper {

    public static WorkScheduleDto fromEntity(WorkSchedule workSchedule) {
        return WorkScheduleDto.builder()
                .id(workSchedule.getId())
                .date(workSchedule.getDate())
                .startTime(workSchedule.getStartTime())
                .endTime(workSchedule.getEndTime())
                .status(workSchedule.getStatus())
                .masterFullName(workSchedule.getMaster().getFullName())
                .build();
    }
}

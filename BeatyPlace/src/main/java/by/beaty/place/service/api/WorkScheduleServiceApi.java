package by.beaty.place.service.api;

import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.service.dto.WorkScheduleDto;
import java.time.LocalDate;
import java.util.List;

public interface WorkScheduleServiceApi {

    List<WorkScheduleDto> getAllByMaster(Long idMaster);

    List<WorkScheduleDto> findAvailableSlots(Long masterId, LocalDate date);

    void updateStatusWorkSchedule(Long slotId, SlotStatus status);
}

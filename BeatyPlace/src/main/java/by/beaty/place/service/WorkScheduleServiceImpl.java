package by.beaty.place.service;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.repository.WorkScheduleRepository;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.WorkScheduleDto;
import by.beaty.place.service.dto.util.WorkScheduleMapper;
import by.beaty.place.service.exception.SlotNotFoundException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class WorkScheduleServiceImpl implements WorkScheduleServiceApi {

    private final WorkScheduleRepository workScheduleRepository;

    @Override
    public List<WorkScheduleDto> getAllByMaster(Long idMaster) {
        Users master = Users.builder()
                .id(idMaster)
                .build();
        List<WorkScheduleDto> allSlotsMaster = workScheduleRepository.getAllByMaster(master)
                .stream()
                .map(WorkScheduleMapper::fromEntity)
                .toList();
        log.info("Получение всех слотов от мастера с идентификатором {} {}", idMaster, LocalDateTime.now());
        return allSlotsMaster;
    }

    @Override
    public List<WorkScheduleDto> findAvailableSlots(Long masterId, LocalDate date) {
        List<WorkScheduleDto> availableSlots = workScheduleRepository.findAvailableSlots(masterId, date);
        log.info("Получение свободных слотов от мастера с идентификатором {} {}", masterId, LocalDateTime.now());
        return availableSlots;
    }

    @Override
    public void updateStatusWorkSchedule(Long slotId, SlotStatus status) {
        WorkSchedule workSchedule = workScheduleRepository.findById(slotId).orElseThrow(
                () -> new SlotNotFoundException(String.format("Слот для записи с идентификатором %s не найден", slotId)));
        workSchedule.setStatus(status);
        workScheduleRepository.save(workSchedule);
        log.info("Обновление статус слота для записи с идентификатором {} {}", slotId, LocalDateTime.now());
    }

    @Override
    public List<WorkScheduleDto> findByMasterAndDateBetween(Long idMaster) {
        LocalDate now = LocalDate.now();
        LocalDate startDate = now.withDayOfMonth(1);
        LocalDate endDate = now.withDayOfMonth(now.lengthOfMonth());

        Users master = Users.builder()
                .id(idMaster)
                .build();
        List<WorkScheduleDto> allSlotsMaster = workScheduleRepository.findByMasterAndDateBetween(master, startDate, endDate)
                .stream()
                .map(WorkScheduleMapper::fromEntity)
                .toList();
        log.info("Получение всех слотов от мастера с идентификатором в этом месяце {} {}", idMaster, LocalDateTime.now());
        return allSlotsMaster;
    }

    @Override
    public void createWorkSchedule(Long idMaster, WorkScheduleDto workScheduleDto) {
        Users master = Users.builder()
                .id(idMaster)
                .build();
        WorkSchedule workSchedule = WorkSchedule.builder()
                .master(master)
                .startTime(workScheduleDto.getStartTime())
                .endTime(workScheduleDto.getEndTime())
                .date(workScheduleDto.getDate())
                .status(SlotStatus.FREE)
                .build();
        log.info("Сохранение нового слота у мастера {} {}", idMaster, LocalDateTime.now());
        workScheduleRepository.save(workSchedule);
    }
}

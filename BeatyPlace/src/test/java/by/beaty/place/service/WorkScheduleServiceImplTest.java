package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.repository.WorkScheduleRepository;
import by.beaty.place.service.dto.WorkScheduleDto;
import by.beaty.place.service.exception.SlotNotFoundException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Collections;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class WorkScheduleServiceImplTest {

    private static final Long MASTER_ID = 1L;
    private static final Long SLOT_ID = 1L;
    private static final LocalDate DATE = LocalDate.of(2025, 3, 5);
    private static final LocalTime START_TIME = LocalTime.of(9, 0);
    private static final LocalTime END_TIME = LocalTime.of(17, 0);

    @Mock
    private WorkScheduleRepository workScheduleRepository;

    @InjectMocks
    private WorkScheduleServiceImpl workScheduleService;

    @Test
    void getAllByMasterTest_Success() {
        // GIVEN

        WorkScheduleDto scheduleDto = new WorkScheduleDto();
        scheduleDto.setId(1L);
        scheduleDto.setStartTime(START_TIME);
        scheduleDto.setEndTime(END_TIME);

        List<WorkSchedule> workSchedules = Collections.singletonList(
                WorkSchedule.builder()
                        .id(1L)
                        .startTime(START_TIME)
                        .endTime(END_TIME)
                        .master(Users.builder().fullName("Master").build())
                        .build()
        );

        when(workScheduleRepository.getAllByMaster(any(Users.class))).thenReturn(workSchedules);

        // WHEN
        List<WorkScheduleDto> result = workScheduleService.getAllByMaster(MASTER_ID);

        // THEN
        assertNotNull(result);
        assertEquals(1, result.size());
        assertEquals(START_TIME, result.get(0).getStartTime());
        assertEquals(END_TIME, result.get(0).getEndTime());
        verify(workScheduleRepository, times(1)).getAllByMaster(any(Users.class));
    }

    @Test
    void getAllByMasterTest_EmptyList() {
        // GIVEN
        when(workScheduleRepository.getAllByMaster(any(Users.class))).thenReturn(Collections.emptyList());

        // WHEN
        List<WorkScheduleDto> result = workScheduleService.getAllByMaster(MASTER_ID);

        // THEN
        assertNotNull(result);
        assertTrue(result.isEmpty());
        verify(workScheduleRepository, times(1)).getAllByMaster(any(Users.class));
    }

    @Test
    void getAllByMasterTest_Exception() {
        // GIVEN
        when(workScheduleRepository.getAllByMaster(any(Users.class))).thenThrow(new RuntimeException("Database error"));

        // WHEN
        assertThrows(RuntimeException.class, () -> workScheduleService.getAllByMaster(MASTER_ID));

        // THEN
        verify(workScheduleRepository, times(1)).getAllByMaster(any(Users.class));
    }

    @Test
    void findAvailableSlotsTest_Success() {
        // GIVEN
        WorkScheduleDto workScheduleDto = new WorkScheduleDto();
        workScheduleDto.setId(SLOT_ID);
        workScheduleDto.setStartTime(START_TIME);
        workScheduleDto.setEndTime(END_TIME);

        when(workScheduleRepository.findAvailableSlots(MASTER_ID, DATE))
                .thenReturn(Collections.singletonList(workScheduleDto));

        // WHEN
        List<WorkScheduleDto> availableSlots = workScheduleService.findAvailableSlots(MASTER_ID, DATE);

        // THEN
        assertNotNull(availableSlots);
        assertEquals(1, availableSlots.size());
        assertEquals(START_TIME, availableSlots.get(0).getStartTime());
        assertEquals(END_TIME, availableSlots.get(0).getEndTime());
        verify(workScheduleRepository, times(1)).findAvailableSlots(MASTER_ID, DATE);
    }

    @Test
    void findAvailableSlotsTest_EmptyList() {
        // GIVEN
        when(workScheduleRepository.findAvailableSlots(MASTER_ID, DATE)).thenReturn(Collections.emptyList());

        // WHEN
        List<WorkScheduleDto> availableSlots = workScheduleService.findAvailableSlots(MASTER_ID, DATE);

        // THEN
        assertNotNull(availableSlots);
        assertTrue(availableSlots.isEmpty());
        verify(workScheduleRepository, times(1)).findAvailableSlots(MASTER_ID, DATE);
    }

    @Test
    void updateStatusWorkScheduleTest_Success() {
        // GIVEN
        WorkSchedule workSchedule = new WorkSchedule();
        workSchedule.setId(SLOT_ID);
        workSchedule.setStatus(SlotStatus.FREE);

        when(workScheduleRepository.findById(SLOT_ID)).thenReturn(java.util.Optional.of(workSchedule));

        // WHEN
        workScheduleService.updateStatusWorkSchedule(SLOT_ID, SlotStatus.BOOKED);
        assertEquals(SlotStatus.BOOKED, workSchedule.getStatus());

        // THEN
        verify(workScheduleRepository, times(1)).save(workSchedule);
    }

    @Test
    void updateStatusWorkScheduleTest_SlotNotFound() {
        // GIVEN
        when(workScheduleRepository.findById(SLOT_ID)).thenReturn(java.util.Optional.empty());

        // WHEN | THEN
        assertThrows(SlotNotFoundException.class, () -> workScheduleService.updateStatusWorkSchedule(SLOT_ID, SlotStatus.BOOKED));
        verify(workScheduleRepository, times(1)).findById(SLOT_ID);
    }

    @Test
    void createWorkSchedule_shouldSaveWorkScheduleCorrectly() {
        // GIVEN
        Long masterId = 1L;

        WorkScheduleDto workScheduleDto = new WorkScheduleDto();
        workScheduleDto.setDate(LocalDate.of(2025, 4, 14));
        workScheduleDto.setStartTime(LocalTime.of(9, 0));
        workScheduleDto.setEndTime(LocalTime.of(18, 0));

        ArgumentCaptor<WorkSchedule> captor = ArgumentCaptor.forClass(WorkSchedule.class);

        // WHEN
        workScheduleService.createWorkSchedule(masterId, workScheduleDto);

        // THEN
        verify(workScheduleRepository, times(1)).save(captor.capture());

        WorkSchedule savedSchedule = captor.getValue();
        assertEquals(masterId, savedSchedule.getMaster().getId());
        assertEquals(workScheduleDto.getDate(), savedSchedule.getDate());
        assertEquals(workScheduleDto.getStartTime(), savedSchedule.getStartTime());
        assertEquals(workScheduleDto.getEndTime(), savedSchedule.getEndTime());
        assertEquals(SlotStatus.FREE, savedSchedule.getStatus());
    }
}
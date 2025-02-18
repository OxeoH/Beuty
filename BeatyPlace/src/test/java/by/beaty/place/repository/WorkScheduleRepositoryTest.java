package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.DayOfWeek;
import java.time.LocalTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class WorkScheduleRepositoryTest extends BaseRepositoryTest {

    public static final long MASTER_ID = 3L;
    @Autowired
    private WorkScheduleRepository workScheduleRepository;

    @Test
    void saveWorkScheduleTest() {
        // GIVEN
        Users master = getMaster();
        WorkSchedule workSchedule = WorkSchedule.builder()
                .master(master)
                .dayOfWeek(DayOfWeek.FRIDAY)
                .startTime(LocalTime.of(9, 0))
                .endTime(LocalTime.of(18, 0))
                .build();

        workScheduleRepository.save(workSchedule);

        // WHEN
        List<WorkSchedule> masterWorkSchedule = workScheduleRepository.getAllByMaster(master);

        // THEN
        assertEquals(1, masterWorkSchedule.size());
    }

    @Test
    void getAllScheduleByMaster() {
        Users master = getMaster();

        // GIVEN | WHEN
        List<WorkSchedule> masterWorkSchedule = workScheduleRepository.getAllByMaster(master);

        // THEN
        assertEquals(1, masterWorkSchedule.size());
    }

    private static Users getMaster() {
        return Users.builder()
                .id(MASTER_ID)
                .build();
    }
}

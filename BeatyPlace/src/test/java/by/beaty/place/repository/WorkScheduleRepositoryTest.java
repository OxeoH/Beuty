package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.DayOfWeek;
import java.time.Duration;
import java.time.LocalTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class WorkScheduleRepositoryTest extends BaseRepositoryTest {

    public static final long MASTER_ID = 3L;

    @Container
    static PostgreSQLContainer<?> postgreSQLContainer = new PostgreSQLContainer<>("postgres:15")
            .withDatabaseName("prop")
            .withUsername("postgres")
            .withPassword("postgres")
            .waitingFor(Wait.forListeningPort().withStartupTimeout(Duration.ofSeconds(60)))
            .withExposedPorts(5432);

    @DynamicPropertySource
    static void registerPgProperties(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url",
                () -> String.format("jdbc:postgresql://localhost:%d/prop", postgreSQLContainer.getFirstMappedPort()));
        registry.add("spring.datasource.username", () -> "postgres");
        registry.add("spring.datasource.password", () -> "postgres");
        registry.add("spring.flyway.url", () -> String.format("jdbc:postgresql://localhost:%d/prop",
                postgreSQLContainer.getFirstMappedPort()));
        registry.add("spring.flyway.user", postgreSQLContainer::getUsername);
        registry.add("spring.flyway.password", postgreSQLContainer::getPassword);
    }

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

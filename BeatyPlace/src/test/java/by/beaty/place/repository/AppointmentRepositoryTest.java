package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.config.BaseRepositoryTest;
import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.AppointmentStatus;
import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class AppointmentRepositoryTest extends BaseRepositoryTest {

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
    private AppointmentRepository appointmentRepository;

    @Test
    void appointmentSaveTest() {
        // GIVEN
        Users master = getUsers(3L);
        Users client = getUsers(2L);
        Category category = Category.builder()
                .id(3L)
                .build();
        Appointment appointment = Appointment.builder()
                .master(master)
                .client(client)
                .price(BigDecimal.ZERO)
                .status(AppointmentStatus.PENDING)
                .category(category)
                .build();
        // WHEN
        appointmentRepository.save(appointment);

        // THEN
        List<Appointment> appointmentByClient = appointmentRepository.getAppointmentByClient(client);
        assertEquals(2, appointmentByClient.size());
    }

    @Test
    void getAppointmentByMasterTest() {
        // GIVEN
        Users master = getUsers(3L);

        // WHEN
        List<Appointment> appointmentByMaster = appointmentRepository.getAppointmentByMaster(master);

        // THEN
        assertEquals(1, appointmentByMaster.size());
    }

    @Test
    void getAppointmentByClientTest() {
        // GIVEN
        Users client = getUsers(2L);

        // WHEN
        List<Appointment> appointmentByClient = appointmentRepository.getAppointmentByClient(client);

        // THEN
        assertEquals(1, appointmentByClient.size());
    }

    @Test
    void getCountAppointmentsByMasterTest() {
        // GIVEN | WHEN
        Long countAppointmentsByMasterId = appointmentRepository.countAppointmentsByMasterId(3L);

        // THEN
        assertEquals(1, countAppointmentsByMasterId);
    }

    @Test
    void hasUserAppointmentByIdTest() {
        boolean hasUserAppointmentById = appointmentRepository.hasClientAppointmentById(777L, 2L);

        assertTrue(hasUserAppointmentById);
    }

    @Test
    void hasMasterAppointmentByIdTest() {
        boolean hasMasterAppointmentById = appointmentRepository.hasMasterAppointmentById(777L, 3L);

        assertTrue(hasMasterAppointmentById);
    }

    @Test
    void getTotalEarningsForTodayTest() {
        Double totalEarningsForToday = appointmentRepository.getTotalEarningsForToday();

        assertEquals(0.0, totalEarningsForToday);
    }

    @Test
    void getTotalEarningsForLastMonthTest() {
        Long totalEarningsForLastMonth = appointmentRepository.getTotalEarningsForLastMonth(LocalDate.now());

        assertEquals(0, totalEarningsForLastMonth);
    }

    @Test
    void countClientsForTodayTest() {
        Long countClientsForToday = appointmentRepository.countClientsForToday();

        assertEquals(0, countClientsForToday);
    }

    @Test
    void getLast10AppointmentInCurrentMonthTest() {
        List<Appointment> last10AppointmentInCurrentMonth = appointmentRepository.getLast10AppointmentInCurrentMonth(
                LocalDate.now(),
                LocalDate.now().plusMonths(1), Pageable.ofSize(1));

        assertEquals(0, last10AppointmentInCurrentMonth.size());
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

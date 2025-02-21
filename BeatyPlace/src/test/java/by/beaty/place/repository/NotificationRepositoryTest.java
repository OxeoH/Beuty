package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Notification;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class NotificationRepositoryTest extends BaseRepositoryTest {

    public static final long USER_ID = 4L;

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
    private NotificationRepository notificationRepository;

    @Test
    void saveNotificationTest() {
        // GIVEN
        Users user = getUsers();
        Notification notification = Notification.builder()
                .user(user)
                .notificationType(NotificationType.REVIEW)
                .createdAt(LocalDateTime.now())
                .message("Test")
                .isRead(true)
                .build();

        // WHEN
        notificationRepository.save(notification);

        // THEN
        List<Notification> notificationbyUser = notificationRepository.getAllByUser(user);
        assertEquals(1, notificationbyUser.size());
    }

    @Test
    void getAllNotificationByUser() {
        // GIVEN
        Users user = getUsers();

        // WHEN
        List<Notification> notificationbyUser = notificationRepository.getAllByUser(user);

        // THEN
        assertEquals(0, notificationbyUser.size());
    }

    private static Users getUsers() {
        return Users.builder()
                .id(USER_ID)
                .build();
    }
}

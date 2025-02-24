package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.BlackList;
import by.beaty.place.model.Users;
import by.beaty.place.config.BaseRepositoryTest;
import java.time.Duration;
import java.time.LocalDateTime;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;


class BlackListRepositoryTest extends BaseRepositoryTest {

    public static final String USERNAME_BLOCKED_CLIENT = "client1";

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
    private BlackListRepository blackListRepository;

    @Test
    void saveBlackListTest() {
        // GIVEN
        Users admin = getUsers(12L);
        Users client = getUsers(2L);
        BlackList blackList = BlackList.builder()
                .user(client)
                .blockedBy(admin)
                .blockedAt(LocalDateTime.of(2025, 2, 18, 12, 12))
                .blockedUntil(LocalDateTime.of(2026, 2, 18, 12, 12))
                .reason("Причина")
                .build();
        // WHEN
        blackListRepository.save(blackList);

        // THEN
        BlackList blackListById = blackListRepository.getReferenceById(1L);
        assertNotNull(blackListById);
    }

    @Test
    void isBlockedTest() {
        // GIVEN | WHEN
        boolean isBlockedUser = blackListRepository.isUserBlocked(USERNAME_BLOCKED_CLIENT);

        // THEN
        assertTrue(isBlockedUser);
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

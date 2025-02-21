package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
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

class ReviewRepositoryTest extends BaseRepositoryTest {

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
    private ReviewRepository reviewRepository;

    @Test
    void saveReviewTest() {
        // GIVEN
        Users master = getUsers(3L);
        Users client = getUsers(2L);
        Review review = Review.builder()
                .client(client)
                .master(master)
                .rating(5)
                .comment("Тестовый коммент")
                .createdAt(LocalDateTime.now())
                .build();

        // WHEN
        reviewRepository.save(review);

        // THEN
        List<Review> reviewByMaster = reviewRepository.getAllByMaster(master);
        assertEquals(2, reviewByMaster.size());
    }

    @Test
    void getAllReviewByUser() {
        // GIVEN
        Users master = getUsers(3L);

        // WHEN
        List<Review> reviewByMaster = reviewRepository.getAllByMaster(master);

        // THEN
        assertEquals(1, reviewByMaster.size());
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

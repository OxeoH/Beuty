package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.SalonReview;
import by.beaty.place.model.Users;
import by.beaty.place.config.BaseRepositoryTest;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class SalonReviewRepositoryTest extends BaseRepositoryTest {

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
    private SalonReviewRepository salonReviewRepository;

    @Test
    void saveSalonReviewTest() {
        // GIVEN
        Users client = Users.builder()
                .id(3L)
                .build();
        SalonReview salonReview = new SalonReview();
        salonReview.setClient(client);
        salonReview.setComment("Comment");
        salonReview.setRating(4);
        salonReview.setCreatedAt(LocalDateTime.now());
        salonReviewRepository.save(salonReview);

        // WHEN
        Optional<SalonReview> salonReviewById = salonReviewRepository.findById(1L);

        // THEN
        assertNotNull(salonReviewById.get());
    }

    @Test
    void getAllSalonReviewTest() {
        // GIVEN | WHEN
        List<SalonReview> salonReviews = salonReviewRepository.findAll();

        // THEN
        assertTrue(salonReviews.size() > 1);
    }
}

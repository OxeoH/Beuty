package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.Category;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.Duration;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class CategoryRepositoryTest extends BaseRepositoryTest {

    private static final String CATEGORY_NAME = "NewCategory";

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
    private CategoryRepository categoryRepository;

    @Test
    void saveCategoryTest() {
        // GIVEN
        Category category = new Category();
        category.setName(CATEGORY_NAME);
        categoryRepository.save(category);

        // WHEN
        Optional<Category> categoryByName = categoryRepository.findByName(CATEGORY_NAME);

        // THEN
        assertNotNull(categoryByName.get());
    }

    @Test
    void getAllCategoryTest() {
        // GIVEN | WHEN
        List<Category> categoryList = categoryRepository.findAll();

        // THEN
        assertTrue(categoryList.size() > 1);
    }
}

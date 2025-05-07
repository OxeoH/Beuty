package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.config.BaseRepositoryTest;
import by.beaty.place.model.Contact;
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

class ContactRepositoryTest extends BaseRepositoryTest {

    //TODO Разобраться как не дублировать эту часть во всех тестах репозитория и не падать на mvn test
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
    private ContactRepository contactRepository;

    @Test
    void saveContactFormTest() {
        // GIVEN
        Contact contact = Contact.builder()
                .firstname("Test")
                .lastname("Test")
                .message("Test")
                .email("Test")
                .subject("Test")
                .dateTimeSend(LocalDateTime.now())
                .build();

        // WHEN
        Contact contactSaved = contactRepository.save(contact);

        // THEN
        assertNotNull(contactSaved);
    }

    @Test
    void getAllContactTest() {
        // GIVEN | WHEN
        List<Contact> contactList = contactRepository.findAll();

        // THEN
        assertTrue(contactList.size() > 0);
    }
}

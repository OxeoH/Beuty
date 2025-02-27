package by.beaty.place.repository;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.config.BaseRepositoryTest;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import java.time.Duration;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.junit.jupiter.Container;

class UserRepositoryRepositoryTest extends BaseRepositoryTest {

    private static final String USERNAME = "client1";
    private static final long USER_ID = 4L;
    private static final String EMAIL = "admin@example.com";

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
    private UserRepository usersRepository;

    @Test
    void saveUserTest() {
        // GIVEN
        Users user = new Users();
        user.setEmail("test@example.com");
        user.setFullName("fullname");
        user.setUsername("username");
        user.setRole(Role.CLIENT);
        user.setPassword("password");
        user.setEmailVerified(true);
        usersRepository.save(user);

        // WHEN
        Optional<Users> foundUser = usersRepository.findByEmail("test@example.com");

        // THEN
        assertNotNull(foundUser.get());
    }

    @Test
    void findAllTest() {
        // GIVEN | WHEN
        List<Users> allUsers = usersRepository.findAll();

        // THEN
        assertTrue(allUsers.size() > 1);
    }

    @Test
    void getUserById() {
        // GIVEN | WHEN
        Optional<Users> userById = usersRepository.findById(USER_ID);

        // THEN
        assertNotNull(userById.get());
    }

    @Test
    void getUserByUsername() {
        // GIVEN | WHEN
        Optional<Users> userByUsername = usersRepository.findByUsername(USERNAME);

        // THEN
        assertNotNull(userByUsername.get());
    }

    @Test
    void getUserByEmail() {
        // GIVEN | WHEN
        Optional<Users> userByEmail = usersRepository.findByEmail(EMAIL);

        // THEN
        assertNotNull(userByEmail.get());
    }

    @Test
    void getAllByRole() {
        // GIVEN | WHEN
        List<Users> allMasters = usersRepository.getAllByRole(Role.MASTER);

        // THEN
        assertEquals(1, allMasters.size());
    }

    @ParameterizedTest
    @MethodSource("userProvider")
    void findByUsernameOrEmail(String username, String email) {
        // GIVEN | WHEN
        Optional<Users> userOpt = usersRepository.findByUsernameOrEmail(username, email);

        // THEN
        assertThat(userOpt).isPresent();
        assertThat(userOpt.get().getUsername()).isEqualTo("master1");
        assertThat(userOpt.get().getEmail()).isEqualTo("master@example.com");
    }

    private static Stream<Arguments> userProvider() {
        return Stream.of(
                Arguments.of("master1", "master@example.com"),
                Arguments.of("nmmas123", "master@example.com")
        );
    }
}

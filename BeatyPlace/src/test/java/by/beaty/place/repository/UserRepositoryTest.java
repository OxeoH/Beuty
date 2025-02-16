package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class UserRepositoryTest extends BaseRepositoryTest {

    private static final String USERNAME = "client1";
    private static final long USER_ID = 4L;
    private static final String EMAIL = "admin@example.com";

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
}

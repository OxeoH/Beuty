package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.UserRepository;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


@ExtendWith(MockitoExtension.class)
class CustomUserDetailsServiceTest {

    private static final String USERNAME = "username";

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private CustomUserDetailsService customUserDetailsService;

    @Test
    void loadUserByUsernameTest() {
        // GIVEN
        Users user = new Users();
        user.setEmail("test@example.com");
        user.setFullName("fullname");
        user.setUsername("username");
        user.setRole(Role.CLIENT);
        user.setPassword("password");
        user.setEmailVerified(true);

        when(userRepository.findByUsernameOrEmail(any(), any())).thenReturn(Optional.of(user));

        // WHEN
        UserDetails userDetails = customUserDetailsService.loadUserByUsername("username");

        // THEN
        assertNotNull(userDetails);
    }

    @Test
    void loadUserByUsernameThrowExceptionTest() {
        // GIVEN
        when(userRepository.findByUsernameOrEmail(any(), any())).thenReturn(Optional.empty());

        // WHEN
        UsernameNotFoundException usernameNotFoundException = assertThrows(UsernameNotFoundException.class,
                () -> customUserDetailsService.loadUserByUsername(USERNAME));

        // THEN
        assertEquals("Пользователь с логином или email не найден: username", usernameNotFoundException.getMessage());
    }
}
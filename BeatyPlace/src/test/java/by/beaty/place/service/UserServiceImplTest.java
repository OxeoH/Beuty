package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.BlackList;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.BlackListRepository;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.VerificationServiceApi;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.exception.MailSenderException;
import by.beaty.place.service.exception.UserNotFoundException;
import jakarta.mail.MessagingException;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

@ExtendWith(MockitoExtension.class)
class UserServiceImplTest {

    @Mock
    private UserRepository userRepository;
    @Mock
    private VerificationServiceApi verificationService;
    @Mock
    private BlackListRepository blackListRepository;
    @Mock
    private PasswordEncoder passwordEncoder;

    @InjectMocks
    private UserServiceImpl userService;

    @Test
    void createUser_Success() throws MessagingException {
        // GIVEN
        UserRequestDto requestDto = createUserRequestDto("testUser", "test@example.com", "Test User", "password123");
        Users savedUser = createUserEntity(1L, "testUser", "test@example.com");

        when(userRepository.save(any(Users.class))).thenReturn(savedUser);
        when(passwordEncoder.encode(anyString())).thenReturn("encodedPassword");

        // WHEN
        Users result = userService.createUser(requestDto);

        // THEN
        assertNotNull(result);
        assertEquals("testUser", result.getUsername());
        assertEquals("test@example.com", result.getEmail());
        assertNotNull(result.getVerificationCode());
        verify(userRepository).save(any(Users.class));
        verify(verificationService).sendVerificationCode(eq("test@example.com"), anyString());
    }

    @Test
    void createUser_MailSendingFails_ThrowsException() throws MessagingException {
        // GIVEN
        UserRequestDto requestDto = createUserRequestDto("testUser", "test@example.com", "Test User", "password123");

        when(userRepository.save(any(Users.class))).thenReturn(new Users());
        when(passwordEncoder.encode(anyString())).thenReturn("encodedPassword");
        doThrow(new MessagingException("Ошибка при отправке")).when(verificationService)
                .sendVerificationCode(anyString(), anyString());

        // WHEN
        MailSenderException exception = assertThrows(MailSenderException.class, () -> userService.createUser(requestDto));

        // THEN
        assertEquals("Ошибка при отправке", exception.getMessage());
        verify(userRepository).save(any(Users.class));
        verify(verificationService).sendVerificationCode(eq("test@example.com"), anyString());
    }

    @Test
    void shouldReturnNullWhenUserWithUsernameOrEmailExists() {
        // GIVEN
        UserRequestDto requestDto = createUserRequestDto("existingUser", "existingEmail@example.com", "Existing User",
                "password123");

        Optional<Users> existingUser = Optional.of(new Users());
        when(userRepository.findByUsernameOrEmail(requestDto.getUsername(), requestDto.getEmail())).thenReturn(existingUser);

        // WHEN
        Users result = userService.createUser(requestDto);

        // THEN
        assertNull(result);
    }

    @Test
    void shouldCreateUserWhenNoExistingUser() throws MessagingException {
        // GIVEN
        UserRequestDto requestDto = createUserRequestDto("existingUser", "existingEmail@example.com", "Existing User",
                "password123");

        when(userRepository.findByUsernameOrEmail(requestDto.getUsername(), requestDto.getEmail())).thenReturn(Optional.empty());
        when(userRepository.save(Mockito.any(Users.class))).thenReturn(new Users());

        // WHEN
        Users result = userService.createUser(requestDto);

        // THEN
        assertNotNull(result);
        verify(userRepository).save(Mockito.any(Users.class));
        verify(verificationService).sendVerificationCode(anyString(), anyString());
    }

    @Test
    void getUserById_WhenUserExists_ShouldReturnUser() {
        // GIVEN
        Long userId = 1L;
        Users expectedUser = createUserEntity(userId, "testUser", "test@example.com");

        when(userRepository.findById(userId)).thenReturn(Optional.of(expectedUser));

        // WHEN
        Users actualUser = userService.getUserById(userId);

        // THEN
        assertNotNull(actualUser);
        assertEquals(expectedUser.getId(), actualUser.getId());
        assertEquals(expectedUser.getUsername(), actualUser.getUsername());
        verify(userRepository).findById(userId);
    }

    @Test
    void getUserById_WhenUserDoesNotExist_ShouldThrowUserNotFoundException() {
        // GIVEN
        Long userId = 2L;
        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // WHEN | THEN
        UserNotFoundException exception = assertThrows(UserNotFoundException.class, () -> userService.getUserById(userId));

        assertEquals("Пользователь с идентификатором 2 не найден", exception.getMessage());
        verify(userRepository).findById(userId);
    }

    @Test
    void getUserByUsernameOrEmail_WhenUserExistsByUsername_ShouldReturnUser() {
        // GIVEN
        String username = "testUser";
        String email = "test@example.com";
        Long userId = 1L;
        Users expectedUser = createUserEntity(userId, username, email);

        when(userRepository.findByUsernameOrEmail(username, username)).thenReturn(Optional.of(expectedUser));

        // WHEN
        Users actualUser = userService.getUserByUsernameOrEmail(username, email);

        // THEN
        assertNotNull(actualUser);
        assertEquals(username, actualUser.getUsername());
        verify(userRepository).findByUsernameOrEmail(username, username);
    }

    @Test
    void getUserByUsernameOrEmail_WhenUserExistsByEmail_ShouldReturnUser() {
        // GIVEN
        String username = "testUser";
        String email = "test@example.com";
        Long userId = 1L;
        Users expectedUser = createUserEntity(userId, username, email);

        when(userRepository.findByUsernameOrEmail(email, email)).thenReturn(Optional.of(expectedUser));

        // WHEN
        Users actualUser = userService.getUserByUsernameOrEmail(email, email);

        // THEN
        assertNotNull(actualUser);
        assertEquals(email, actualUser.getEmail());
        verify(userRepository).findByUsernameOrEmail(email, email);
    }

    @Test
    void getUserByUsernameOrEmail_WhenUserDoesNotExist_ShouldThrowUsernameNotFoundException() {
        // GIVEN
        String username = "notExistingUser";
        String email = "notfound@example.com";

        when(userRepository.findByUsernameOrEmail(username, username)).thenReturn(Optional.empty());

        // WHEN | THEN
        UsernameNotFoundException exception = assertThrows(
                UsernameNotFoundException.class,
                () -> userService.getUserByUsernameOrEmail(username, email)
        );

        assertEquals("Пользователь с логином или email не найден: notExistingUser", exception.getMessage());
        verify(userRepository).findByUsernameOrEmail(username, username);
    }

    @Test
    void updateUser_WhenUserExists_ShouldUpdateAndReturnUser() {
        // GIVEN
        Long userId = 1L;
        String newFullName = "Updated User";
        UserRequestDto requestDto = createUserRequestDto("existingUser", "existingEmail@example.com", newFullName,
                "password123");

        Users existingUser = createUserEntity(userId, "Old Name", "email");

        when(userRepository.findById(userId)).thenReturn(Optional.of(existingUser));

        // WHEN
        Users updatedUser = userService.updateUser(userId, requestDto);

        // THEN
        assertNotNull(updatedUser);
        assertEquals(newFullName, updatedUser.getFullName());
        verify(userRepository).findById(userId);
    }

    @Test
    void updateUser_WhenUserDoesNotExist_ShouldThrowUserNotFoundException() {
        // GIVEN
        Long userId = 2L;

        UserRequestDto requestDto = createUserRequestDto("existingUser", "existingEmail@example.com", "newFullName",
                "password123");

        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // WHEN | THEN
        UserNotFoundException exception = assertThrows(
                UserNotFoundException.class,
                () -> userService.updateUser(userId, requestDto)
        );

        assertEquals("Пользователь с идентификатором 2 не найден", exception.getMessage());
        verify(userRepository).findById(userId);
    }

    @Test
    void changePassword_WhenUserExists_ShouldUpdatePassword() {
        // GIVEN
        Long userId = 1L;
        String rawPassword = "newPassword123";
        String encodedPassword = "encodedPassword123";

        Users existingUser = Users.builder()
                .id(userId)
                .password("oldEncodedPassword")
                .build();

        when(userRepository.findById(userId)).thenReturn(Optional.of(existingUser));
        when(passwordEncoder.encode(rawPassword)).thenReturn(encodedPassword);

        // WHEN
        userService.changePassword(userId, rawPassword);

        // THEN
        assertEquals(encodedPassword, existingUser.getPassword());
        verify(userRepository).findById(userId);
        verify(passwordEncoder).encode(rawPassword);
        verify(userRepository).save(existingUser);
    }

    @Test
    void changePassword_WhenUserDoesNotExist_ShouldThrowUserNotFoundException() {
        // GIVEN
        Long userId = 2L;
        String newPassword = "somePassword";

        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // WHEN | THEN
        UserNotFoundException exception = assertThrows(
                UserNotFoundException.class,
                () -> userService.changePassword(userId, newPassword)
        );

        assertEquals("Пользователь с идентификатором 2 не найден", exception.getMessage());
        verify(userRepository).findById(userId);
        verify(passwordEncoder, never()).encode(anyString());
        verify(userRepository, never()).save(any(Users.class));
    }

    @Test
    void blockUser_WhenUserExists_ShouldBlockUserAndSaveBlackList() {
        // GIVEN
        Long userId = 1L;
        Long blockedById = 2L;
        LocalDateTime blockedUntil = LocalDateTime.now().plusDays(5);
        String reason = "Violation of terms";

        Users existingUser = Users.builder()
                .id(userId)
                .locked(false)
                .build();

        when(userRepository.findById(userId)).thenReturn(Optional.of(existingUser));

        // WHEN
        userService.blockUser(userId, blockedById, blockedUntil, reason);

        // THEN
        verify(blackListRepository).save(any(BlackList.class));
        verify(userRepository, times(1)).save(existingUser);
        assertTrue(existingUser.isLocked());
    }

    @Test
    void blockUser_WhenUserDoesNotExist_ShouldThrowUserNotFoundException() {
        // GIVEN
        Long userId = 1L;
        Long blockedById = 2L;
        LocalDateTime blockedUntil = LocalDateTime.now().plusDays(5);
        String reason = "Violation of terms";

        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // WHEN | THEN
        UserNotFoundException exception = assertThrows(
                UserNotFoundException.class,
                () -> userService.blockUser(userId, blockedById, blockedUntil, reason)
        );

        assertEquals("Пользователь с идентификатором 1 не найден", exception.getMessage());
        verify(blackListRepository, never()).save(any(BlackList.class));
        verify(userRepository, never()).save(any(Users.class));
    }

    @Test
    void unblockUser_WhenUserExists_ShouldUnblockUser() {
        // GIVEN
        Long userId = 1L;
        Users existingUser = Users.builder()
                .id(userId)
                .locked(true)
                .build();

        when(userRepository.findById(userId)).thenReturn(Optional.of(existingUser));

        // WHEN
        userService.unblockUser(userId);

        // THEN
        verify(userRepository, times(1)).save(existingUser);
        assertFalse(existingUser.isLocked());
    }

    @Test
    void unblockUser_WhenUserDoesNotExist_ShouldThrowUserNotFoundException() {
        // GIVEN
        Long userId = 1L;

        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // WHEN | THEN
        UserNotFoundException exception = assertThrows(
                UserNotFoundException.class,
                () -> userService.unblockUser(userId)
        );

        assertEquals("Пользователь с идентификатором 1 не найден", exception.getMessage());
        verify(userRepository, never()).save(any(Users.class));
    }

    @Test
    void getAllUsers_WhenUsersExist_ShouldReturnListOfUsers() {
        // GIVEN
        Users user1 = Users.builder()
                .fullName("User1")
                .role(Role.CLIENT)
                .build();

        Users user2 = Users.builder()
                .fullName("User2")
                .role(Role.CLIENT)
                .build();

        List<Users> users = List.of(user1, user2);

        when(userRepository.findAll()).thenReturn(users);

        // WHEN
        List<UserRequestDto> result = userService.getAllUsers();

        // THEN
        assertEquals(2, result.size());
        assertEquals("User1", result.get(0).getFullName());
        assertEquals("User2", result.get(1).getFullName());
        verify(userRepository, times(1)).findAll();
    }

    @Test
    void getAllUsers_WhenNoUsersExist_ShouldReturnEmptyList() {
        // GIVEN
        when(userRepository.findAll()).thenReturn(Collections.emptyList());

        // WHEN
        List<UserRequestDto> result = userService.getAllUsers();

        // THEN
        assertTrue(result.isEmpty());
        verify(userRepository, times(1)).findAll();
    }

    @Test
    void getUsersByRole_WhenUsersExistForRole_ShouldReturnListOfUsersByRole() {
        // GIVEN
        Users user1 = Users.builder()
                .fullName("User1")
                .role(Role.CLIENT)
                .build();

        Users user2 = Users.builder()
                .fullName("User2")
                .role(Role.CLIENT)
                .build();

        List<Users> users = List.of(user1, user2);

        when(userRepository.getAllByRole(Role.CLIENT)).thenReturn(users);

        // WHEN
        List<UserRequestDto> result = userService.getUsersByRole(Role.CLIENT);

        // THEN
        assertEquals(2, result.size());
        assertEquals("User1", result.get(0).getFullName());
        verify(userRepository, times(1)).getAllByRole(Role.CLIENT);
    }

    @Test
    void getUsersByRole_WhenNoUsersExistForRole_ShouldReturnEmptyList() {
        // GIVEN
        when(userRepository.getAllByRole(Role.ADMIN)).thenReturn(Collections.emptyList());

        // WHEN
        List<UserRequestDto> result = userService.getUsersByRole(Role.ADMIN);

        // THEN
        assertTrue(result.isEmpty());
        verify(userRepository, times(1)).getAllByRole(Role.ADMIN);
    }

    private UserRequestDto createUserRequestDto(String username, String email, String fullName, String password) {
        return UserRequestDto.builder()
                .username(username)
                .email(email)
                .fullName(fullName)
                .password(password)
                .build();
    }

    private Users createUserEntity(Long id, String username, String email) {
        return Users.builder()
                .id(id)
                .username(username)
                .email(email)
                .build();
    }
}
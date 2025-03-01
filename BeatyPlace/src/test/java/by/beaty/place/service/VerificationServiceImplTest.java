package by.beaty.place.service;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Users;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.MailSenderApi;
import by.beaty.place.service.exception.UserNotFoundException;
import jakarta.mail.MessagingException;
import java.lang.reflect.Field;
import java.time.LocalDateTime;
import java.util.Optional;
import lombok.SneakyThrows;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.util.ReflectionUtils;

@ExtendWith(MockitoExtension.class)
class VerificationServiceImplTest {

    @Mock
    private MailSenderApi mailSender;
    @Mock
    private UserRepository userRepository;
    @InjectMocks
    private VerificationServiceImpl verificationService;

    private Users testUser;

    @BeforeEach
    void setUp() {
        Field field = ReflectionUtils.findField(VerificationServiceImpl.class, "host");
        ReflectionUtils.makeAccessible(field);
        ReflectionUtils.setField(field, verificationService, "localhost");

        testUser = Users.builder()
                .email("test@example.com")
                .verificationCode("validCode")
                .verificationCodeExpiresAt(LocalDateTime.now().plusHours(1))
                .build();
    }

    @Test
    void testSendVerificationCode() throws MessagingException {
        // GIVEN
        String email = "test@example.com";
        String code = "123456";
        String expectedVerificationLink = String.format("http://localhost:8080/auth/verify?token=%s", code);

        // WHEN
        verificationService.sendVerificationCode(email, code);

        // THEN
        String expectedSubject = "Accept your registration";

        verify(mailSender, times(1)).sendMessage(eq(email), eq(expectedSubject), anyString());

        String emailBody = captureEmailBody(mailSender);
        assertTrue(emailBody.contains(expectedVerificationLink));
    }

    @Test
    void testSendVerificationCode_shouldThrowMessagingException() throws MessagingException {
        // GIVEN
        String email = "test@example.com";
        String code = "123456";

        doThrow(new MessagingException("Mail server is down")).when(mailSender)
                .sendMessage(anyString(), anyString(), anyString());

        // WHEN | THEN
        MessagingException exception = assertThrows(MessagingException.class, () -> {
            verificationService.sendVerificationCode(email, code);
        });

        assertEquals("Mail server is down", exception.getMessage());
    }

    @Test
    void testVerifyEmail_Success() {
        // GIVEN
        when(userRepository.findByVerificationCode("validCode"))
                .thenReturn(Optional.of(testUser));

        // WHEN | THEN
        boolean result = verificationService.verifyEmail("validCode");
        assertTrue(result);
        assertTrue(testUser.isEmailVerified());
        assertNull(testUser.getVerificationCode());
        assertNull(testUser.getVerificationCodeExpiresAt());
        verify(userRepository, times(1)).save(testUser);
    }

    @Test
    void testVerifyEmail_UserNotFound() {
        // GIVEN
        when(userRepository.findByVerificationCode("invalidCode"))
                .thenReturn(Optional.empty());

        // WHEN | THEN
        assertThrows(UsernameNotFoundException.class, () -> verificationService.verifyEmail("invalidCode"));
    }

    @Test
    void testVerifyEmail_CodeExpired() {
        // GIVEN
        testUser.setVerificationCodeExpiresAt(LocalDateTime.now().minusHours(1));

        when(userRepository.findByVerificationCode("validCode"))
                .thenReturn(Optional.of(testUser));

        // WHEN
        boolean result = verificationService.verifyEmail("validCode");

        // THEN
        assertFalse(result);
        assertFalse(testUser.isEmailVerified());
        assertNotNull(testUser.getVerificationCode());
        assertNotNull(testUser.getVerificationCodeExpiresAt());
    }

    @Test
    void testVerifyEmail_CodeMismatch() {
        // GIVEN
        when(userRepository.findByVerificationCode("wrongCode"))
                .thenReturn(Optional.of(testUser));

        // WHEN
        boolean result = verificationService.verifyEmail("wrongCode");

        // THEN
        assertFalse(result);
        assertFalse(testUser.isEmailVerified());
        assertNotNull(testUser.getVerificationCode());
        assertNotNull(testUser.getVerificationCodeExpiresAt());
    }

    @Test
    void verifyResetPasswordCode_shouldReturnTrue_whenCodeIsValid() {
        // GIVEN
        String resetCode = "123456";
        Users user = new Users();
        user.setResetCode(resetCode);

        when(userRepository.findByResetCode(resetCode))
                .thenReturn(Optional.of(user));

        // WHEN
        boolean result = verificationService.verifyResetPasswordCode(resetCode);

        // THEN
        assertTrue(result, "Код должен быть подтвержден");
    }

    @Test
    void verifyResetPasswordCode_shouldThrowException_whenCodeIsInvalid() {
        // GIVEN
        String invalidCode = "000000";

        when(userRepository.findByResetCode(invalidCode))
                .thenReturn(Optional.empty());

        // WHEN | THEN
        assertThrows(UserNotFoundException.class, () -> verificationService.verifyResetPasswordCode(invalidCode),
                "Должно выбрасываться исключение, если код не найден");
    }

    @Test
    void cancelRecovery_shouldReturnTrue_whenCodeIsValid() {
        // GIVEN
        String resetCode = "123456";
        Users user = new Users();
        user.setResetCode(resetCode);

        when(userRepository.findByResetCode(resetCode))
                .thenReturn(Optional.of(user));

        // WHEN
        boolean result = verificationService.cancelRecovery(resetCode);

        // THEN
        assertTrue(result, "Операция отмены должна пройти успешно");
        assertNull(user.getResetCode(), "Код должен быть сброшен");
        verify(userRepository).save(user);
    }

    @Test
    void cancelRecovery_shouldThrowException_whenCodeIsInvalid() {
        // GIVEN
        String invalidCode = "000000";

        when(userRepository.findByResetCode(invalidCode))
                .thenReturn(Optional.empty());

        // WHEN | THEN
        assertThrows(UserNotFoundException.class, () -> verificationService.cancelRecovery(invalidCode),
                "Должно выбрасываться исключение, если код не найден");
    }

    @Test
    void testSendResetVerificationCode() throws MessagingException {
        // GIVEN
        doNothing().when(mailSender).sendMessage(anyString(), anyString(), anyString());

        // WHEN
        verificationService.sendResetVerificationCode("user@example.com", "sample-reset-code");

        // THEN
        verify(mailSender, times(1)).sendMessage(eq("user@example.com"), eq("Password recovery"), anyString());

        String recoveryLink = String.format("http://localhost:8080/auth/reset-password?token=%s", "sample-reset-code");
        String cancelRecovery = String.format("http://localhost:8080/auth/cancel-recovery?token=%s", "sample-reset-code");

        String emailBody = captureEmailBody(mailSender);
        assertTrue(emailBody.contains(recoveryLink), "Email body should contain the recovery link");
        assertTrue(emailBody.contains(cancelRecovery), "Email body should contain the cancel recovery link");
    }

    @SneakyThrows
    private String captureEmailBody(MailSenderApi mailSender) {
        ArgumentCaptor<String> bodyCaptor = ArgumentCaptor.forClass(String.class);
        verify(mailSender).sendMessage(anyString(), anyString(), bodyCaptor.capture());
        return bodyCaptor.getValue();
    }
}
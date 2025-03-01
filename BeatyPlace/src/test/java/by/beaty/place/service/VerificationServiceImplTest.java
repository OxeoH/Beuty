package by.beaty.place.service;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Users;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.MailSenderApi;
import jakarta.mail.MessagingException;
import java.lang.reflect.Field;
import java.time.LocalDateTime;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
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
        String expectedBody = String.format(
                "<p>Visit this link for activate account:</p> " +
                        "<p><a href=\"%s\" target=\"_blank\">Activate account</a></p>" +
                        "<p>Link works 24 hours.</p>", expectedVerificationLink);

        verify(mailSender, times(1)).sendMessage(email, expectedSubject, expectedBody);
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
}
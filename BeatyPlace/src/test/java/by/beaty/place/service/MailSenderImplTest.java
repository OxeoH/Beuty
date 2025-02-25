package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.lenient;
import static org.mockito.Mockito.verify;

import by.beaty.place.service.exception.InvalidEmailException;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import java.util.stream.Stream;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mail.javamail.JavaMailSender;

@ExtendWith(MockitoExtension.class)
class MailSenderImplTest {

    @Mock
    private JavaMailSender mailSender;
    @Mock
    private MimeMessage mimeMessage;

    @InjectMocks
    private MailSenderImpl emailService;

    @BeforeEach
    void setUp() {
        lenient().when(mailSender.createMimeMessage()).thenReturn(mimeMessage);
    }

    @Test
    void sendMessageSuccess() throws MessagingException {
        // GIVEN
        String emailTo = "test@example.com";
        String subject = "Test Subject";
        String message = "Test message";

        // WHEN
        emailService.sendMessage(emailTo, subject, message);

        // THEN
        verify(mailSender).send(mimeMessage);
    }

    @ParameterizedTest
    @MethodSource("invalidEmailDataProvider")
    void sendEmailInvalidDataShouldThrowException(String emailTo, String subject, String text, String expectedMessage) {
        // GIVEN | WHEN
        InvalidEmailException exception = assertThrows(InvalidEmailException.class, () ->
                emailService.sendMessage(emailTo, subject, text)
        );

        // THEN
        assertEquals(expectedMessage, exception.getMessage());
    }

    private static Stream<Object[]> invalidEmailDataProvider() {
        return Stream.of(
                new Object[]{"invalid-email", "Subject", "Message", "Некорректный email"},
                new Object[]{"", "Subject", "Message", "Некорректный email"},
                new Object[]{"test@example.com", "", "Message", "Тема письма не может быть пустой"},
                new Object[]{"test@example.com", "Subject", "", "Тело письма не может быть пустым"}
        );
    }
}

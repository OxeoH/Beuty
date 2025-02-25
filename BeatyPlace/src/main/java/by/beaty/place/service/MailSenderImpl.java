package by.beaty.place.service;

import by.beaty.place.service.api.MailSenderApi;
import by.beaty.place.service.exception.InvalidEmailException;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class MailSenderImpl implements MailSenderApi {

    private final JavaMailSender mailSender;

    @Override
    public void sendMessage(String emailTo, String subject, String message) throws MessagingException {
        validateEmailData(emailTo, subject, message);

        MimeMessage messageMail = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(messageMail, true);

        helper.setFrom("MS_mSlinK@trial-pxkjn419nq9gz781.mlsender.net");
        helper.setTo(emailTo);
        helper.setSubject(subject);
        helper.setText(message, true);

        mailSender.send(messageMail);
    }

    private void validateEmailData(String emailTo, String subject, String message) {
        if (emailTo == null || emailTo.isBlank() || !emailTo.contains("@")) {
            throw new InvalidEmailException("Некорректный email");
        }
        if (subject == null || subject.isBlank()) {
            throw new InvalidEmailException("Тема письма не может быть пустой");
        }
        if (message == null || message.isBlank()) {
            throw new InvalidEmailException("Тело письма не может быть пустым");
        }
    }
}

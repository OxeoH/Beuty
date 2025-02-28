package by.beaty.place.service;

import by.beaty.place.model.Users;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.MailSenderApi;
import by.beaty.place.service.api.VerificationServiceApi;
import jakarta.mail.MessagingException;
import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class VerificationServiceImpl implements VerificationServiceApi {

    @Value("${hostname}")
    private String host;

    private final MailSenderApi mailSender;
    private final UserRepository userRepository;

    @Override
    public void sendVerificationCode(String email, String code) throws MessagingException {
        String verificationLink = String.format("http://%s:8080/auth/verify?token=%s", host, code);

        String subject = "Accept your registration";
        String body = String.format(
                "<p>Visit this link for activate account:</p> " +
                        "<p><a href=\"%s\" target=\"_blank\">Activate account</a></p>" +
                        "<p>Link works 24 hours.</p>", verificationLink);

        mailSender.sendMessage(email, subject, body);
    }

    @Override
    public boolean verifyEmail(String code) {
        Users user = userRepository.findByVerificationCode(code)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("User with code %s not found", code)));

        if (user.getVerificationCode().equals(code) &&
                user.getVerificationCodeExpiresAt().isAfter(LocalDateTime.now())) {

            user.setEmailVerified(true);
            user.setVerificationCode(null);
            user.setVerificationCodeExpiresAt(null);
            userRepository.save(user);
            return true;
        }
        return false;
    }
}

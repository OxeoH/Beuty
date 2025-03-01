package by.beaty.place.service;

import by.beaty.place.model.Users;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.MailSenderApi;
import by.beaty.place.service.api.VerificationServiceApi;
import by.beaty.place.service.exception.UserNotFoundException;
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
                "<!DOCTYPE html>" +
                        "<html>" +
                        "<head>" +
                        "<meta charset=\"UTF-8\">" +
                        "<title>Account Verification</title>" +
                        "</head>" +
                        "<body style=\"font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;\">" +
                        "<table align=\"center\" width=\"600\" style=\"background-color: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);\">"
                        +
                        "<tr><td align=\"center\" style=\"padding: 10px 0;\"><h2 style=\"color: #333;\">Activate Your Account</h2></td></tr>"
                        +
                        "<tr><td style=\"font-size: 16px; color: #555; padding: 10px 20px;\">" +
                        "<p>Hello,</p>" +
                        "<p>Thank you for registering! To activate your account, please click the button below:</p>" +
                        "<p style=\"text-align: center;\">" +
                        "<a href=\"%s\" style=\"display: inline-block; background-color: #28a745; color: #ffffff; text-decoration: none; padding: 12px 20px; border-radius: 5px; font-size: 16px;\">Activate Account</a>"
                        +
                        "</p>" +
                        "<p>This link will expire in 24 hours, so please activate your account as soon as possible.</p>" +
                        "</td></tr>" +
                        "<tr><td align=\"center\" style=\"padding: 20px 0; font-size: 12px; color: #aaa;\">" +
                        "<p>&copy; 2025 YourCompany. All rights reserved.</p>" +
                        "</td></tr>" +
                        "</table>" +
                        "</body>" +
                        "</html>", verificationLink);

        mailSender.sendMessage(email, subject, body);
    }


    @Override
    public void sendResetVerificationCode(String email, String code) throws MessagingException {
        String recoveryLink = String.format("http://%s:8080/auth/reset-password?token=%s", host, code);
        String cancelRecovery = String.format("http://%s:8080/auth/cancel-recovery?token=%s", host, code);

        String subject = "Password recovery";

        String body = String.format(
                "<!DOCTYPE html>" +
                        "<html>" +
                        "<head>" +
                        "<meta charset=\"UTF-8\">" +
                        "<title>Password Recovery</title>" +
                        "</head>" +
                        "<body style=\"font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;\">" +
                        "<table align=\"center\" width=\"600\" style=\"background-color: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);\">"
                        +
                        "<tr><td align=\"center\" style=\"padding: 10px 0;\"><h2 style=\"color: #333;\">Password Recovery Request</h2></td></tr>"
                        +
                        "<tr><td style=\"font-size: 16px; color: #555; padding: 10px 20px;\">" +
                        "<p>Hello,</p>" +
                        "<p>We have received a request to reset your password. Click the button below to proceed:</p>" +
                        "<p style=\"text-align: center;\">" +
                        "<a href=\"%s\" style=\"display: inline-block; background-color: #007bff; color: #ffffff; text-decoration: none; padding: 12px 20px; border-radius: 5px; font-size: 16px;\">Reset Password</a>"
                        +
                        "</p>" +
                        "<p>If you did not request this, you can cancel the request using the link below:</p>" +
                        "<p style=\"text-align: center;\">" +
                        "<a href=\"%s\" style=\"display: inline-block; background-color: #dc3545; color: #ffffff; text-decoration: none; padding: 12px 20px; border-radius: 5px; font-size: 16px;\">Cancel Recovery</a>"
                        +
                        "</p>" +
                        "<p style=\"font-size: 14px; color: #777;\">If you didn’t make this request, simply ignore this email.</p>"
                        +
                        "</td></tr>" +
                        "<tr><td align=\"center\" style=\"padding: 20px 0; font-size: 12px; color: #aaa;\">" +
                        "<p>&copy; 2025 YourCompany. All rights reserved.</p>" +
                        "</td></tr>" +
                        "</table>" +
                        "</body>" +
                        "</html>", recoveryLink, cancelRecovery);

        mailSender.sendMessage(email, subject, body);
    }


    @Override
    public boolean verifyEmail(String code) {
        Users userByVerificationCode = userRepository.findByVerificationCode(code)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("Пользователь с кодом %s не найден", code)));

        if (userByVerificationCode.getVerificationCode().equals(code) &&
                userByVerificationCode.getVerificationCodeExpiresAt().isAfter(LocalDateTime.now())) {

            userByVerificationCode.setEmailVerified(true);
            userByVerificationCode.setVerificationCode(null);
            userByVerificationCode.setVerificationCodeExpiresAt(null);
            userRepository.save(userByVerificationCode);
            return true;
        }
        return false;
    }

    @Override
    public boolean verifyResetPasswordCode(String code) {
        Users userByResetCode = userRepository.findByResetCode(code)
                .orElseThrow(() -> new UserNotFoundException(String.format("Пользователь с кодом %s не найден", code)));
        return userByResetCode.getResetCode().equals(code);
    }

    @Override
    public boolean cancelRecovery(String code) {
        Users user = userRepository.findByResetCode(code)
                .orElseThrow(() -> new UserNotFoundException(String.format("Пользователь с кодом %s не найден", code)));
        user.setResetCode(null);
        userRepository.save(user);
        return true;
    }
}

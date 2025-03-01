package by.beaty.place.service.api;

import jakarta.mail.MessagingException;

public interface VerificationServiceApi {

    void sendVerificationCode(String email, String code) throws MessagingException;

    void sendResetVerificationCode(String email, String code) throws MessagingException;

    boolean verifyEmail(String code);

    boolean verifyResetPasswordCode(String code);

    boolean cancelRecovery(String code);
}



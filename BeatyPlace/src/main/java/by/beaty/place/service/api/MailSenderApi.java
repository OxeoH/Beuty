package by.beaty.place.service.api;

import jakarta.mail.MessagingException;

public interface MailSenderApi {

    void sendMessage(String emailTo, String subject, String message) throws MessagingException;
}

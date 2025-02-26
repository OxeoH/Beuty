package by.beaty.place.config;

import java.util.Properties;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {

    @Value("${spring.mail.username}")
    private String username;

    @Value("${spring.mail.host}")
    private String host;

    @Value("${spring.mail.password}")
    private String password;

    @Value("${spring.mail.port}")
    private String port;

    @Bean
    public JavaMailSender getMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(host);
        mailSender.setPort(Integer.parseInt(port));
        mailSender.setUsername(username);
        mailSender.setPassword(password);

        Properties properties = mailSender.getJavaMailProperties();
        properties.setProperty("mail.transport.protocol", "smtp");
        properties.setProperty("mail.debug", String.valueOf(true));
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable","true");

        return mailSender;
    }
}

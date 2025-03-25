package by.beaty.place.kafka.service;

import by.beaty.place.kafka.service.api.KafkaReader;
import by.beaty.place.service.api.NotificationServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.annotation.EnableKafka;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@Service
@EnableKafka
@Slf4j
@RequiredArgsConstructor
public class KafkaReaderImpl implements KafkaReader {

    private final SimpMessagingTemplate messagingTemplate;
    private final ObjectMapper objectMapper;
    private final NotificationServiceApi notificationService;

    @Override
    @KafkaListener(topics = "Notification_V3", groupId = "beaty-group")
    public void listen(String message) {
        try {
            NotificationDto notification = objectMapper.readValue(message, NotificationDto.class);
            Long notificationId = notificationService.saveNotification(notification);
            notification.setId(notificationId);

            log.info("Received notification for user {}: {}", notification.getToUserId(), notification);

            sendNotificationWithRetry(notification.getToUserId(), notification, 3);

        } catch (Exception e) {
            log.error("Failed to parse message: {}", message, e);
        }
    }

    private void sendNotificationWithRetry(Long userId, NotificationDto message, int attempts) {
        for (int i = 0; i < attempts; i++) {
            try {
                messagingTemplate.convertAndSendToUser(String.valueOf(userId), "/topic/notifications", message);
                log.info("WebSocket notification sent successfully to {}", userId);
                return;
            } catch (Exception e) {
                log.warn("Failed to send WebSocket message to {}. Attempt {}/{}", userId, i + 1, attempts);
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException ignored) {
                }
            }
        }
        log.error("Failed to send WebSocket message to {} after {} attempts", userId, attempts);
    }
}

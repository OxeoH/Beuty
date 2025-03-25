package by.beaty.place.kafka.service;

import by.beaty.place.kafka.service.api.KafkaReader;
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

    @Override
    @KafkaListener(topics = "Notification_V3", groupId = "beaty-group")
    public void listen(String message) {
        try {
            NotificationDto notification = objectMapper.readValue(message, NotificationDto.class);
            log.info("Received notification for user {}: {}", notification.getToUserId(), notification);

            messagingTemplate.convertAndSendToUser(String.valueOf(notification.getToUserId()), "/topic/notifications", message);

        } catch (Exception e) {
            log.error("Failed to parse message: {}", message, e);
        }
    }

}

package by.beaty.place.kafka.service.api;

import by.beaty.place.service.dto.NotificationDto;

public interface KafkaSender {

    void sendMessage(String message);

    void sendNotification(NotificationDto notification);
}

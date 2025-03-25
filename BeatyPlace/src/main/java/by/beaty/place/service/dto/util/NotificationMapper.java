package by.beaty.place.service.dto.util;

import by.beaty.place.model.Notification;
import by.beaty.place.service.dto.NotificationDto;
import lombok.experimental.UtilityClass;

@UtilityClass
public class NotificationMapper {

    public static NotificationDto fromEntity(Notification notification) {
        return NotificationDto.builder()
                .notificationType(notification.getNotificationType())
                .message(notification.getMessage())
                .toUserId(notification.getUser().getId())
                .build();
    }
}

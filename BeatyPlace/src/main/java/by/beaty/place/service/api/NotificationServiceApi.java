package by.beaty.place.service.api;

import by.beaty.place.service.dto.NotificationDto;
import java.util.List;

public interface NotificationServiceApi {

    void markAsRead(Long idNotification);

    Long saveNotification(NotificationDto notification);

    List<NotificationDto> getUnreadNotifications(Long userId);
}

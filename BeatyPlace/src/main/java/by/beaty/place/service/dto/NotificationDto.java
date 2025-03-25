package by.beaty.place.service.dto;

import by.beaty.place.model.common.NotificationType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class NotificationDto {

    private Long toUserId;
    private String message;
    private NotificationType notificationType;
}

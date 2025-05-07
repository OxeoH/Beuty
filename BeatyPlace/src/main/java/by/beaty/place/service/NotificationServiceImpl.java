package by.beaty.place.service;

import by.beaty.place.model.Notification;
import by.beaty.place.model.Users;
import by.beaty.place.repository.NotificationRepository;
import by.beaty.place.service.api.NotificationServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.dto.util.NotificationMapper;
import by.beaty.place.service.exception.NotificationNotFoundException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Slf4j
@RequiredArgsConstructor
public class NotificationServiceImpl implements NotificationServiceApi {

    private final NotificationRepository notificationRepository;

    @Override
    @Transactional("transactionManager")
    public void markAsRead(Long idNotification) {
        Notification notification = notificationRepository.findById(idNotification)
                .orElseThrow(() -> new NotificationNotFoundException(
                        String.format("Уведомление с идентификатором %s не найдено", idNotification)));

        if (notification.isRead()) {
            log.info("Уведомление уже прочитано: {}", notification);
            return;
        }

        notification.setRead(true);
        notificationRepository.save(notification);
        log.info("Уведомление с идентификатором {} помечено как прочитанное {}", idNotification, LocalDateTime.now());
    }

    @Override
    @Transactional("transactionManager")
    public Long saveNotification(NotificationDto notification) {
        Notification notificationDB = Notification.builder()
                .isRead(false)
                .notificationType(notification.getNotificationType())
                .user(Users.builder()
                        .id(notification.getToUserId())
                        .build())
                .createdAt(LocalDateTime.now())
                .message(notification.getMessage())
                .build();

        log.info("Уведомление {} успешно сохранено для пользователя {}", notificationDB.getId(), notification.getToUserId());
        return notificationRepository.saveAndFlush(notificationDB).getId();
    }

    @Override
    @Transactional("transactionManager")
    public List<NotificationDto> getUnreadNotifications(Long userId) {
        List<Notification> unreadNotifications = notificationRepository.findByUserIdAndIsReadFalse(userId);
        log.info("Получение всех уведомлений пользователя {} {}", userId, LocalDateTime.now());

        unreadNotifications.forEach(notification -> notification.setRead(true));

        notificationRepository.saveAll(unreadNotifications);
        log.info("Смена статуса на прочитано для всех уведомлений");

        return unreadNotifications.stream()
                .map(NotificationMapper::fromEntity)
                .collect(Collectors.toList());
    }
}

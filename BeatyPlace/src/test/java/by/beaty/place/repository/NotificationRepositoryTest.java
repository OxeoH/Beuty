package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Notification;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class NotificationRepositoryTest extends BaseRepositoryTest {

    public static final long USER_ID = 4L;
    @Autowired
    private NotificationRepository notificationRepository;

    @Test
    void saveNotificationTest() {
        // GIVEN
        Users user = getUsers();
        Notification notification = Notification.builder()
                .user(user)
                .notificationType(NotificationType.REVIEW)
                .createdAt(LocalDateTime.now())
                .message("Test")
                .isRead(true)
                .build();

        // WHEN
        notificationRepository.save(notification);

        // THEN
        List<Notification> notificationbyUser = notificationRepository.getAllByUser(user);
        assertEquals(1, notificationbyUser.size());
    }

    @Test
    void getAllNotificationByUser() {
        // GIVEN
        Users user = getUsers();

        // WHEN
        List<Notification> notificationbyUser = notificationRepository.getAllByUser(user);

        // THEN
        assertEquals(1, notificationbyUser.size());
    }

    private static Users getUsers() {
        return Users.builder()
                .id(USER_ID)
                .build();
    }
}

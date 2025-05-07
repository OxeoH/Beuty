package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.any;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Notification;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.NotificationRepository;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.exception.NotificationNotFoundException;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class NotificationServiceImplTest {

    @Mock
    private NotificationRepository notificationRepository;

    @InjectMocks
    private NotificationServiceImpl notificationService;

    private Notification notification;
    private NotificationDto notificationDto;

    @BeforeEach
    public void setUp() {
        notification = new Notification();
        notification.setId(1L);
        notification.setMessage("Test notification");
        notification.setRead(false);
        notification.setUser(Users.builder().id(1L).build());

        notificationDto = new NotificationDto();
        notificationDto.setMessage("Test notification");
        notificationDto.setNotificationType(NotificationType.REVIEW);
        notificationDto.setToUserId(1L);
    }

    @Test
    void testMarkAsRead_NotificationFoundAndNotRead() {
        // Given
        when(notificationRepository.findById(1L)).thenReturn(Optional.of(notification));

        // When
        notificationService.markAsRead(1L);

        // Then
        assertTrue(notification.isRead());
        verify(notificationRepository, times(1)).save(notification);
    }

    @Test
    void testMarkAsRead_NotificationAlreadyRead() {
        // Given
        notification.setRead(true);
        when(notificationRepository.findById(1L)).thenReturn(Optional.of(notification));

        // When
        notificationService.markAsRead(1L);

        // Then
        assertTrue(notification.isRead());
        verify(notificationRepository, never()).save(notification); // save не должен быть вызван
    }

    @Test
    void testMarkAsRead_NotificationNotFound() {
        // Given
        when(notificationRepository.findById(1L)).thenReturn(Optional.empty());

        // When & Then
        NotificationNotFoundException exception = assertThrows(
                NotificationNotFoundException.class,
                () -> notificationService.markAsRead(1L)
        );

        assertEquals("Уведомление с идентификатором 1 не найдено", exception.getMessage());
    }

    @Test
    void testSaveNotification_Success() {
        // Given
        Notification notification = Notification.builder()
                .id(1L)
                .isRead(false)
                .notificationType(notificationDto.getNotificationType())
                .user(Users.builder().id(notificationDto.getToUserId()).build())
                .createdAt(LocalDateTime.now())
                .message(notificationDto.getMessage())
                .build();

        when(notificationRepository.saveAndFlush(any(Notification.class))).thenReturn(notification);

        // When
        Long notificationId = notificationService.saveNotification(notificationDto);

        // Then
        assertNotNull(notificationId);
        assertEquals(notification.getId(), notificationId);
        verify(notificationRepository, times(1)).saveAndFlush(any(Notification.class)); // saveAndFlush должен быть вызван
    }

    @Test
    void testSaveNotification_Failure() {
        // Given
        when(notificationRepository.saveAndFlush(any(Notification.class)))
                .thenThrow(new RuntimeException("Database error"));

        // When & Then
        assertThrows(RuntimeException.class, () -> notificationService.saveNotification(notificationDto));
    }

    @Test
    void testGetUnreadNotifications_Success() {
        // Given
        List<Notification> unreadNotifications = Collections.singletonList(notification);
        when(notificationRepository.findByUserIdAndIsReadFalse(1L)).thenReturn(unreadNotifications);
        when(notificationRepository.saveAll(unreadNotifications)).thenReturn(unreadNotifications);

        // When
        List<NotificationDto> result = notificationService.getUnreadNotifications(1L);

        // Then
        assertNotNull(result);
        assertEquals(1, result.size());

        verify(notificationRepository, times(1)).saveAll(unreadNotifications);
        verify(notificationRepository, times(1)).findByUserIdAndIsReadFalse(1L);
    }

}

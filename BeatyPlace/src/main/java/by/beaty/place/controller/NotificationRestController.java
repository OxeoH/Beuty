package by.beaty.place.controller;

import by.beaty.place.service.api.NotificationServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@RequiredArgsConstructor
public class NotificationRestController {

    private final NotificationServiceApi notificationService;

    @PostMapping("/api/notifications/read/{id}")
    public ResponseEntity<Void> markAsRead(@PathVariable Long id) {
        notificationService.markAsRead(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/api/notifications/unread/{userId}")
    public ResponseEntity<List<NotificationDto>> getUnreadNotifications(@PathVariable Long userId) {
        List<NotificationDto> unreadNotifications = notificationService.getUnreadNotifications(userId);
        return ResponseEntity.ok(unreadNotifications);
    }
}

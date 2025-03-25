package by.beaty.place.controller;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import by.beaty.place.model.common.NotificationType;
import by.beaty.place.service.api.NotificationServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class NotificationRestControllerTest {

    @Mock
    private NotificationServiceApi notificationService;

    @InjectMocks
    private NotificationRestController notificationRestController;

    private MockMvc mockMvc;

    private Long userId = 1L;
    private NotificationDto notificationDto;

    @BeforeEach
    public void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(notificationRestController).build();
        notificationDto = new NotificationDto();
        notificationDto.setId(1L);
        notificationDto.setMessage("Test Notification");
        notificationDto.setNotificationType(NotificationType.REVIEW);
        notificationDto.setToUserId(userId);
    }

    @Test
    void testMarkAsRead_Success() throws Exception {
        // Given
        Long notificationId = 1L;

        // When & Then
        mockMvc.perform(post("/api/notifications/read/{id}", notificationId)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(notificationService, times(1)).markAsRead(notificationId);
    }

    @Test
    void testGetUnreadNotifications_Success() throws Exception {
        // Given
        List<NotificationDto> unreadNotifications = Arrays.asList(notificationDto);
        when(notificationService.getUnreadNotifications(userId)).thenReturn(unreadNotifications);

        // When & Then
        mockMvc.perform(get("/api/notifications/unread/{userId}", userId)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.length()").value(1))
                .andExpect(jsonPath("$[0].message").value("Test Notification"));

        verify(notificationService, times(1)).getUnreadNotifications(userId);
    }

    @Test
    void testGetUnreadNotifications_EmptyList() throws Exception {
        // Given
        when(notificationService.getUnreadNotifications(userId)).thenReturn(Arrays.asList());

        // When & Then
        mockMvc.perform(get("/api/notifications/unread/{userId}", userId)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.length()").value(0));

        verify(notificationService, times(1)).getUnreadNotifications(userId);
    }
}
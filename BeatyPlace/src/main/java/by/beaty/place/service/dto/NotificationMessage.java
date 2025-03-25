package by.beaty.place.service.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum NotificationMessage {
    CONTACT_FORM("Пришла контактная форма"),
    REVIEW_MASTER("Поступил отзыв на мастера %s"),
    APPOINTMENT("У вас новая запись"),
    FEEDBACK("Поступил отзыв о салоне"),
    CLIENT_NOTE("Пришло примечание к записи %s");
    private final String message;
}

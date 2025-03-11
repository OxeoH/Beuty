package by.beaty.place.model.common;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum AppointmentStatus {
    PENDING("В обработке"), CONFIRMED("Подтверждено"), CANCELED("Отмененно");
    private final String name;
}

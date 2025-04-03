package by.beaty.place.model.common;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum Role {
    ADMIN("Администратор"), CLIENT("Клиент"), MASTER("Мастер");
    private final String name;
}

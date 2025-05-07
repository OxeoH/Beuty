package by.beaty.place.model.common;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum SlotStatus {
    FREE("Свободно"),
    BOOKED("Занято");
    private final String name;

}

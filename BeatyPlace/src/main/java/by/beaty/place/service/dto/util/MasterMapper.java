package by.beaty.place.service.dto.util;

import by.beaty.place.model.Users;
import by.beaty.place.service.dto.MasterResponseDto;

public class MasterMapper {

    public static MasterResponseDto fromUser(Users master) {
        return MasterResponseDto.builder()
                .id(master.getId())
                .fullName(master.getFullName())
                .build();
    }
}

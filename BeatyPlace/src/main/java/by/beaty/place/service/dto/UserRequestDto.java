package by.beaty.place.service.dto;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.common.Role;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class UserRequestDto {

    private Long id;
    private String username;
    private String email;
    private String password;
    private String fullName;
    private Role role;
    private List<Appointment> appointmentsUser;
    private List<Appointment> appointmentsMaster;
}

package by.beaty.place.service.api;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.service.dto.UserRequestDto;
import java.time.LocalDateTime;
import java.util.List;

public interface UserServiceApi {

    Users createUser(UserRequestDto user);

    Users getUserById(Long id);

    Users getUserByUsernameOrEmail(String username, String email);

    Users updateUser(Long id, UserRequestDto userRequestDto);

    void changePassword(String resetCode, String newPassword);

    void blockUser(Long userId, Long blockedById, LocalDateTime blockedUntil, String reason);

    void unblockUser(Long userId);

    List<UserRequestDto> getAllUsers();

    List<UserRequestDto> getUsersByRole(Role role);

    void sendResetCode(String email);
}

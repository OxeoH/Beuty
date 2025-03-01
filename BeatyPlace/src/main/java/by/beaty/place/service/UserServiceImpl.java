package by.beaty.place.service;

import by.beaty.place.model.BlackList;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.BlackListRepository;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.UserServiceApi;
import by.beaty.place.service.api.VerificationServiceApi;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.exception.MailSenderException;
import by.beaty.place.service.exception.UserNotFoundException;
import jakarta.mail.MessagingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.util.Base64;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserServiceApi {

    private static final int HOURS_CODE_EXPIRED = 24;
    private static final SecureRandom RANDOM = new SecureRandom();

    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final VerificationServiceApi verificationService;
    private final BlackListRepository blackListRepository;

    @Override
    @Transactional("transactionManager")
    public Users createUser(UserRequestDto requestDto) {
        Optional<Users> userByUsernameOrEmail = userRepository.findByUsernameOrEmail(requestDto.getUsername(),
                requestDto.getEmail());

        if (userByUsernameOrEmail.isPresent()) {
            log.warn("Пользователь с таким логином или email уже зарегистрирован {}", LocalDateTime.now());
            return null;
        }

        Users user = getUserFromDto(requestDto);

        String verificationCode = generateVerificationCode(requestDto.getEmail());
        fillVerificationCode(user, verificationCode);
        userRepository.save(user);

        try {
            verificationService.sendVerificationCode(requestDto.getEmail(), verificationCode);
            log.info("Отправка верификации на почту пользователя {}", LocalDateTime.now());
        } catch (MessagingException e) {
            log.error("Ошибка при попытке отправить верификацию на почту пользователя {} {}", e.getMessage(),
                    LocalDateTime.now());
            throw new MailSenderException(e.getMessage(), e);
        }
        log.info("Сохранение пользователя в системе {}", LocalDateTime.now());
        return user;
    }

    private Users getUserFromDto(UserRequestDto requestDto) {
        Users user = new Users();
        user.setUsername(requestDto.getUsername());
        user.setEmail(requestDto.getEmail());
        user.setPassword(passwordEncoder.encode(requestDto.getPassword()));
        user.setFullName(requestDto.getFullName());
        user.setRole(Role.CLIENT);
        user.setEmailVerified(false);
        user.setLocked(false);
        return user;
    }

    private void fillVerificationCode(Users user, String code) {
        user.setVerificationCode(code);
        user.setVerificationCodeExpiresAt(LocalDateTime.now().plusHours(HOURS_CODE_EXPIRED));
    }

    private static String generateVerificationCode(String email) {
        int randomPart = RANDOM.nextInt(900000) + 100000;
        String uuidPart = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 6);
        long timestampPart = System.currentTimeMillis() % 1000000;
        String emailHashPart = hashEmail(email).substring(0, 6);
        return uuidPart + randomPart + emailHashPart + timestampPart;
    }

    private static String hashEmail(String email) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(email.getBytes(StandardCharsets.UTF_8));
            return Base64.getUrlEncoder().withoutPadding().encodeToString(hash);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Ошибка при хешировании email", e);
        }
    }

    @Override
    public Users getUserById(Long id) {
        Users userById = userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException(String.format("Пользователь с идентификатором %s не найден", id)));
        log.info("Получение пользователя по идентификатору {} {}", id, LocalDateTime.now());
        return userById;
    }

    @Override
    public Users getUserByUsernameOrEmail(String username, String email) {
        Users userByUsernameOrEmail = userRepository.findByUsernameOrEmail(username, username)
                .orElseThrow(() -> new UsernameNotFoundException(
                        String.format("Пользователь с логином или email не найден: %s", username)));

        log.info("Получение пользователя по логину или email: {} {}", username, LocalDateTime.now());
        return userByUsernameOrEmail;
    }

    @Override
    public Users updateUser(Long id, UserRequestDto userRequestDto) {
        Users userById = getUserById(id);
        userById.setFullName(userRequestDto.getFullName());

        log.info("Обновление пользователя с идентификаторов {} {}", id, LocalDateTime.now());
        return userById;
    }

    @Override
    public void changePassword(Long userId, String newPassword) {
        Users userById = getUserById(userId);
        userById.setPassword(passwordEncoder.encode(newPassword));
        log.info("Смена пароля для пользователя с идентификатором {} {}", userId, LocalDateTime.now());
        userRepository.save(userById);
    }

    @Override
    @Transactional("transactionManager")
    public void blockUser(Long userId, Long blockedById, LocalDateTime blockedUntil, String reason) {
        Users userById = getUserById(userId);
        BlackList blackList = BlackList.builder()
                .blockedUntil(blockedUntil)
                .reason(reason)
                .user(userById)
                .blockedBy(Users.builder()
                        .id(blockedById)
                        .build())
                .build();
        blackListRepository.save(blackList);
        log.info("Сохранение причины блокировки пользователя c идентификатором {} {}", userId, LocalDateTime.now());
        userById.setLocked(true);
        userRepository.save(userById);
        log.info("Установка флага блокировку пользователю с идентификатором {} {}", userId, LocalDateTime.now());
    }


    @Override
    public void unblockUser(Long userId) {
        Users userById = getUserById(userId);
        userById.setLocked(false);
        userRepository.save(userById);
        log.info("Разблокировка пользователя с идентификатором {} {}", userId, LocalDateTime.now());
    }

    @Override
    public List<UserRequestDto> getAllUsers() {
        List<UserRequestDto> userRequestDtoList = userRepository.findAll()
                .stream()
                .map(this::getFromUser)
                .toList();
        log.info("Получение всех пользователей {}", LocalDateTime.now());
        return userRequestDtoList;
    }

    @Override
    public List<UserRequestDto> getUsersByRole(Role role) {
        List<UserRequestDto> userRequestDtoList = userRepository.getAllByRole(role)
                .stream()
                .map(this::getFromUser)
                .toList();
        log.info("Получение всех пользователей по роли {}", LocalDateTime.now());
        return userRequestDtoList;
    }

    private UserRequestDto getFromUser(Users user) {
        return UserRequestDto.builder()
                .fullName(user.getFullName())
                .appointmentsUser(user.getClientAppointments())
                .appointmentsMaster(user.getMasterAppointments())
                .role(user.getRole())
                .email(user.getEmail())
                .build();
    }
}

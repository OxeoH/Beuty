package by.beaty.place.service;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.exception.AppointmentNotFoundException;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class AppointmentServiceImpl implements AppointmentServiceApi {

    private final AppointmentRepository appointmentRepository;
    private final CategoryServiceApi categoryService;
    private final WorkScheduleServiceApi workScheduleServiceApi;

    @Override
    public List<Appointment> getAppointmentByMaster(UserRequestDto master) {
        Long idMaster = master.getId();
        Users masterModel = Users.builder()
                .id(idMaster)
                .build();
        List<Appointment> appointmentByMaster = appointmentRepository.getAppointmentByMaster(masterModel);
        log.info("Получение всех записей мастера с идентификатором {} {}", idMaster, LocalDateTime.now());
        return appointmentByMaster;
    }

    @Override
    public List<Appointment> getAppointmentByClient(UserRequestDto client) {
        Long idMaster = client.getId();
        Users masterModel = Users.builder()
                .id(idMaster)
                .build();
        List<Appointment> appointmentByClient = appointmentRepository.getAppointmentByClient(masterModel);
        log.info("Получение всех записей клиента с идентификатором {} {}", idMaster, LocalDateTime.now());
        return appointmentByClient;
    }

    @Override
    public List<Appointment> getAppointmentByUsername(String username) {
        if (username.isBlank()) {
            log.warn("Имя пользователя не корректное, выгружен пустой массив {}", LocalDateTime.now());
            return Collections.emptyList();
        }

        List<Appointment> appointmentByUsername = appointmentRepository.getAppointmentByUsername(username);
        log.info("Получение всех записей пользователя по логину в количестве {} {}", appointmentByUsername.size(),
                LocalDateTime.now());
        return appointmentByUsername;
    }

    @Override
    public List<Appointment> getAppointmentByUsernameAndCategory(String username, Category category) {
        Category categoryById = categoryService.getById(category.getId());
        if (username.isBlank()) {
            log.warn("Имя пользователя не корректное, выгружен пустой массив {}", LocalDateTime.now());
            return Collections.emptyList();
        }
        Long categoryId = categoryById.getId();
        List<Appointment> appointmentByUsernameAndCategory = appointmentRepository.getAppointmentByUsernameAndCategory(username,
                categoryId);
        log.info("Получение всех записей пользователя по логину и категории {} в количестве {} {}", categoryId,
                appointmentByUsernameAndCategory.size(),
                LocalDateTime.now());
        return appointmentByUsernameAndCategory;
    }

    @Override
    @Transactional(value = "transactionManager", isolation = Isolation.REPEATABLE_READ)
    public Appointment createAppointment(AppointmentRequestDto appointmentRequestDto) {
        validateAppointmentRequest(appointmentRequestDto);
        Appointment appointment = mapToAppointmentEntity(appointmentRequestDto);
        Appointment savedAppointment = appointmentRepository.save(appointment);
        log.info("Сохранение записи клиента {}", LocalDateTime.now());
        workScheduleServiceApi.updateStatusWorkSchedule(appointmentRequestDto.getSlotId(), SlotStatus.BOOKED);
        return savedAppointment;
    }

    @Override
    public Appointment getById(Long id) {
        Appointment appointmentById = appointmentRepository.findById(id)
                .orElseThrow(() -> new AppointmentNotFoundException(String.format("Запись с идентификатором %s не найдена", id)));
        log.info("Получение записи по идентификатору {} {}", id, LocalDateTime.now());
        return appointmentById;
    }

    @Override
    public boolean hasAppointmentByUsername(Long id, String username) {
        if (id == null || username.isBlank()) {
            throw new IllegalArgumentException("Некорректные данные, попробуйте еще раз.");
        }
        boolean hasUserAppointmentById = appointmentRepository.hasUserAppointmentById(id, username);
        log.info("Проверка есть ли запись по идентификатору {} у пользователя {} {}", id, username, LocalDateTime.now());
        return hasUserAppointmentById;
    }

    private void validateAppointmentRequest(AppointmentRequestDto appointmentRequestDto) {
        if (appointmentRequestDto.getClientId() == null ||
                appointmentRequestDto.getMasterId() == null ||
                appointmentRequestDto.getCategoryId() == null ||
                appointmentRequestDto.getSlotId() == null) {
            throw new IllegalArgumentException("Все обязательные поля должны быть заполнены.");
        }
    }

    private Appointment mapToAppointmentEntity(AppointmentRequestDto appointmentRequestDto) {
        Users client = Users.builder()
                .id(appointmentRequestDto.getClientId())
                .build();
        Users master = Users.builder()
                .id(appointmentRequestDto.getMasterId())
                .build();
        Category category = Category.builder()
                .id(appointmentRequestDto.getCategoryId())
                .build();
        WorkSchedule workSchedule = WorkSchedule.builder()
                .id(appointmentRequestDto.getSlotId())
                .build();
        return Appointment.builder()
                .status(AppointmentStatus.PENDING)
                .price(appointmentRequestDto.getPrice())
                .client(client)
                .master(master)
                .category(category)
                .workSchedule(workSchedule)
                .build();
    }
}

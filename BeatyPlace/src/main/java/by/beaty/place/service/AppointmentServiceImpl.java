package by.beaty.place.service;

import by.beaty.place.kafka.service.api.KafkaSender;
import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.dto.NotificationMessage;
import by.beaty.place.service.dto.UserRequestDto;
import by.beaty.place.service.exception.AppointmentNotFoundException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class AppointmentServiceImpl implements AppointmentServiceApi {

    private final AppointmentRepository appointmentRepository;
    private final CategoryServiceApi categoryService;
    private final WorkScheduleServiceApi workScheduleServiceApi;
    private final KafkaSender kafkaSender;

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
    @Transactional(value = "transactionManager", propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
    public Appointment createAppointment(AppointmentRequestDto appointmentRequestDto) {
        validateAppointmentRequest(appointmentRequestDto);

        try {
            workScheduleServiceApi.updateStatusWorkSchedule(appointmentRequestDto.getSlotId(), SlotStatus.BOOKED);

            Appointment appointment = mapToAppointmentEntity(appointmentRequestDto);
            Appointment savedAppointment = appointmentRepository.save(appointment);
            log.info("Сохранена запись клиента {} в {}", appointment.getClient().getFullName(), LocalDateTime.now());

            NotificationDto notification = NotificationDto.builder()
                    .notificationType(NotificationType.CONTACT)
                    .message(String.format(NotificationMessage.APPOINTMENT.getMessage(), appointment.getWorkSchedule().getDate(),
                            appointment.getClient().getFullName()))
                    .toUserId(appointmentRequestDto.getMasterId())
                    .build();
            kafkaSender.sendNotification(notification);
            log.info("Уведомление отправлено мастеру с ID {}", appointmentRequestDto.getMasterId());

            return savedAppointment;
        } catch (Exception e) {
            log.error("Ошибка при создании записи клиента: {}", e.getMessage(), e);
            throw new RuntimeException("Не удалось создать запись", e);
        }
    }


    @Override
    public Appointment getById(Long id) {
        Appointment appointmentById = appointmentRepository.findById(id)
                .orElseThrow(() -> new AppointmentNotFoundException(String.format("Запись с идентификатором %s не найдена", id)));
        log.info("Получение записи по идентификатору {} {}", id, LocalDateTime.now());
        return appointmentById;
    }

    @Override
    public boolean hasAppointmentByClientId(Long id, Long idClient) {
        if (id == null || idClient == null) {
            throw new IllegalArgumentException("Некорректные данные, попробуйте еще раз.");
        }
        boolean hasUserAppointmentById = appointmentRepository.hasClientAppointmentById(id, idClient);
        log.info("Проверка есть ли запись по идентификатору {} у пользователя {} {}", id, idClient, LocalDateTime.now());
        return hasUserAppointmentById;
    }

    //TODO Тест
    @Override
    public boolean hasMasterAppointmentById(Long id, Long idMaster) {
        if (id == null || idMaster == null) {
            throw new IllegalArgumentException("Некорректные данные, попробуйте еще раз.");
        }
        boolean hasMasterAppointmentById = appointmentRepository.hasMasterAppointmentById(id, idMaster);
        log.info("Проверка есть ли запись по идентификатору {} у мастера {} {}", id, idMaster, LocalDateTime.now());
        return hasMasterAppointmentById;
    }

    @Override
    @Transactional(value = "transactionManager")
    public void createNoteAppointment(Long id, String note) {
        Appointment appointmentById = appointmentRepository.findById(id)
                .orElseThrow(() -> new AppointmentNotFoundException(String.format("Запись с идентификатором %s не найдена", id)));
        appointmentById.setClientNote(note);
        log.info("Установка примечания для записи {} {}", id, LocalDateTime.now());
        Long masterId = appointmentById.getMaster().getId();
        NotificationDto notification = NotificationDto.builder()
                .notificationType(NotificationType.CONTACT)
                .message(String.format(NotificationMessage.CLIENT_NOTE.getMessage(), appointmentById.getWorkSchedule().getDate()))
                .toUserId(masterId)
                .build();
        kafkaSender.sendNotification(notification);
        log.info("Уведомление отправлено мастеру с ID {}", masterId);
    }

    @Override
    public List<Appointment> getLast10AppointmentInCurrentMonth() {
        LocalDate startOfMonth = LocalDate.now().withDayOfMonth(1);
        LocalDate endOfMonth = startOfMonth.withDayOfMonth(startOfMonth.lengthOfMonth());

        Pageable pageable = PageRequest.of(0, 10);
        List<Appointment> appointments = appointmentRepository.getLast10AppointmentInCurrentMonth(startOfMonth, endOfMonth,
                pageable);
        log.info("Получение последний 10 записей в этом месяце {}", LocalDateTime.now());
        return appointments;
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

        String notes = appointmentRequestDto.getNotes().isBlank() ? "-" : appointmentRequestDto.getNotes();
        return Appointment.builder()
                .status(AppointmentStatus.PENDING)
                .price(appointmentRequestDto.getPrice())
                .client(client)
                .master(master)
                .category(category)
                .workSchedule(workSchedule)
                .clientNote(notes)
                .build();
    }
}

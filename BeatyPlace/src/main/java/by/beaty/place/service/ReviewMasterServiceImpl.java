package by.beaty.place.service;

import by.beaty.place.kafka.service.api.KafkaSender;
import by.beaty.place.model.Appointment;
import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.ReviewMasterRepository;
import by.beaty.place.service.api.AppointmentServiceApi;
import by.beaty.place.service.api.ReviewMasterServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.dto.NotificationMessage;
import by.beaty.place.service.dto.ReviewMasterDto;
import by.beaty.place.service.dto.util.MasterReviewMapper;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewMasterServiceImpl implements ReviewMasterServiceApi {

    private final ReviewMasterRepository reviewRepository;
    private final AppointmentServiceApi appointmentService;
    private final KafkaSender kafkaSender;

    @Override
    public void createReviewMaster(ReviewMasterDto reviewMasterDto) {
        Appointment appointmentById = appointmentService.getById(reviewMasterDto.getAppointmentId());
        Review reviewSave = MasterReviewMapper.fromDto(reviewMasterDto);
        reviewSave.setClient(appointmentById.getClient());
        reviewSave.setMaster(appointmentById.getMaster());

        log.info("Отзыв о мастере {} от клиента {} {}", reviewMasterDto.getMasterId(), reviewMasterDto.getClientId(),
                LocalDateTime.now());
        reviewRepository.save(reviewSave);
        NotificationDto notification = NotificationDto.builder()
                .notificationType(NotificationType.CONTACT)
                .message(String.format(NotificationMessage.REVIEW_MASTER.getMessage(), reviewMasterDto.getMasterId()))
                .toUserId(23L)
                .build();
        kafkaSender.sendNotification(notification);
        log.info("Уведомление отправлено {}", LocalDateTime.now());
    }

    @Override
    public List<ReviewMasterDto> getAllMyMaster(Long masterId) {
        List<ReviewMasterDto> reviewMasterDtos = reviewRepository.getAllByMaster(Users.builder()
                        .id(masterId)
                        .build()).stream()
                .map(MasterReviewMapper::fromEntity)
                .collect(Collectors.toList());
        log.info("Получение всех отзыв о мастере {} {}", masterId, LocalDateTime.now());
        return reviewMasterDtos;
    }
}

package by.beaty.place.service;

import by.beaty.place.kafka.service.api.KafkaSender;
import by.beaty.place.model.SalonReview;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.SalonReviewRepository;
import by.beaty.place.service.api.SalonReviewsServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.dto.NotificationMessage;
import by.beaty.place.service.dto.SalonReviewDto;
import by.beaty.place.service.dto.util.SalonReviewMapper;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class SalonReviewsServiceImpl implements SalonReviewsServiceApi {

    private final SalonReviewRepository salonReviewRepository;
    private final KafkaSender kafkaSender;

    @Override
    public List<SalonReviewDto> getAllReview() {
        List<SalonReviewDto> salonReviewDtoList = salonReviewRepository.findAll()
                .stream()
                .map(SalonReviewMapper::fromEntity)
                .collect(Collectors.toList());
        log.info("Получение списка всех отзывов о салоне {}", LocalDateTime.now());
        return salonReviewDtoList;
    }

    @Override
    public void createSalonReview(SalonReviewDto salonReviewDto) {
        SalonReview salonReviewSave = SalonReviewMapper.fromDto(salonReviewDto);
        salonReviewSave.setCreatedAt(LocalDateTime.now());
        salonReviewRepository.save(salonReviewSave);
        log.info("Сохранение отзыва о салоне от пользователя {} {}", salonReviewDto.getClientId(), LocalDateTime.now());
        NotificationDto notification = NotificationDto.builder()
                .notificationType(NotificationType.CONTACT)
                .message(NotificationMessage.FEEDBACK.getMessage())
                .toUserId(23L)
                .build();
        kafkaSender.sendNotification(notification);
        log.info("Уведомление отправлено {}", LocalDateTime.now());
    }
}

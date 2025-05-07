package by.beaty.place.service;

import by.beaty.place.kafka.service.api.KafkaSender;
import by.beaty.place.model.Contact;
import by.beaty.place.model.common.NotificationType;
import by.beaty.place.repository.ContactRepository;
import by.beaty.place.service.api.ContactServiceApi;
import by.beaty.place.service.dto.NotificationDto;
import by.beaty.place.service.dto.NotificationMessage;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ContactServiceImpl implements ContactServiceApi {

    private final ContactRepository contactRepository;
    private final KafkaSender kafkaSender;

    @Override
    public void saveContact(Contact contact) {
        contact.setDateTimeSend(LocalDateTime.now());
        contactRepository.save(contact);
        log.info("Сохранение контактной формы {}", LocalDateTime.now());
        NotificationDto notification = NotificationDto.builder()
                .notificationType(NotificationType.CONTACT)
                .message(NotificationMessage.CONTACT_FORM.getMessage())
                .toUserId(999999L)
                .build();
        kafkaSender.sendNotification(notification);
        log.info("Отправка уведомления {}", LocalDateTime.now());
    }

    @Override
    public List<Contact> getAll() {
        List<Contact> contactList = contactRepository.findAll();
        log.info("Получение списка контактных форм {}", LocalDateTime.now());
        return contactList;
    }
}

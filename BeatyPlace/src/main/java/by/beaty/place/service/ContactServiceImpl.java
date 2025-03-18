package by.beaty.place.service;

import by.beaty.place.model.Contact;
import by.beaty.place.repository.ContactRepository;
import by.beaty.place.service.api.ContactServiceApi;
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

    @Override
    public void saveContact(Contact contact) {
        contact.setDateTimeSend(LocalDateTime.now());
        contactRepository.save(contact);
        log.info("Сохранение контактной формы {}", LocalDateTime.now());
    }

    @Override
    public List<Contact> getAll() {
        List<Contact> contactList = contactRepository.findAll();
        log.info("Получение списка контактных форм {}", LocalDateTime.now());
        return contactList;
    }
}

package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Contact;
import by.beaty.place.repository.ContactRepository;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class ContactServiceImplTest {

    @Mock
    private ContactRepository contactRepository;

    @InjectMocks
    private ContactServiceImpl contactService;

    @Test
    void testSaveContact() {
        // GIVEN
        Contact contact = Contact.builder()
                .id(1L)
                .firstname("John")
                .lastname("Doe")
                .email("john.doe@example.com")
                .message("Hello!")
                .subject("Subject")
                .dateTimeSend(LocalDateTime.now())
                .build();

        // WHEN
        contactService.saveContact(contact);

        // THEN
        verify(contactRepository, times(1)).save(contact);
    }

    @Test
    void testGetAllContacts() {
        // GIVEN
        List<Contact> contacts = List.of(
                new Contact(1L, "John", "Doe", "Subject", "john.doe@example.com", "Hello!", LocalDateTime.now()),
                new Contact(2L, "Jane", "Smith", "Subject", "jane.smith@example.com", "Hi!", LocalDateTime.now())
        );

        when(contactRepository.findAll()).thenReturn(contacts);

        // WHEN
        List<Contact> result = contactService.getAll();

        // THEN
        assertEquals(2, result.size());
        assertEquals("John", result.get(0).getFirstname());
        assertEquals("Jane", result.get(1).getFirstname());

        verify(contactRepository, times(1)).findAll();
    }
}
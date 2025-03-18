package by.beaty.place.service.api;

import by.beaty.place.model.Contact;
import java.util.List;

public interface ContactServiceApi {

    void saveContact(Contact contact);

    List<Contact> getAll();
}

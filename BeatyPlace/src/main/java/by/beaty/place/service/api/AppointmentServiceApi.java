package by.beaty.place.service.api;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.UserRequestDto;
import java.util.List;

public interface AppointmentServiceApi {

    //TODO Переделать на ДТО возвращение
    List<Appointment> getAppointmentByMaster(UserRequestDto master);

    List<Appointment> getAppointmentByClient(UserRequestDto client);

    List<Appointment> getAppointmentByUsername(String username);

    List<Appointment> getAppointmentByUsernameAndCategory(String username, Category category);

    Appointment createAppointment(AppointmentRequestDto appointmentRequestDto);

    Appointment getById(Long id);

    boolean hasAppointmentByClientId(Long id, Long idClient);
    boolean hasMasterAppointmentById(Long id, Long idMaster);

    void createNoteAppointment(Long id, String note);
}

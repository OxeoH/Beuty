package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.AppointmentStatus;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class AppointmentRepositoryTest extends BaseRepositoryTest {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Test
    void appointmentSaveTest() {
        // GIVEN
        Users master = getUsers(3L);
        Users client = getUsers(2L);
        Category category = Category.builder()
                .id(1L)
                .build();
        Appointment appointment = Appointment.builder()
                .master(master)
                .client(client)
                .price(BigDecimal.ZERO)
                .status(AppointmentStatus.PENDING)
                .category(category)
                .appointmentDate(LocalDateTime.now())
                .build();
        // WHEN
        appointmentRepository.save(appointment);

        // THEN
        List<Appointment> appointmentByClient = appointmentRepository.getAppointmentByClient(client);
        assertEquals(2, appointmentByClient.size());
    }

    @Test
    void getAppointmentByMaster() {
        // GIVEN
        Users master = getUsers(3L);

        // WHEN
        List<Appointment> appointmentByMaster = appointmentRepository.getAppointmentByMaster(master);

        // THEN
        assertEquals(4, appointmentByMaster.size());
    }

    @Test
    void getAppointmentByClient() {
        // GIVEN
        Users client = getUsers(2L);

        // WHEN
        List<Appointment> appointmentByClient = appointmentRepository.getAppointmentByClient(client);

        // THEN
        assertEquals(3, appointmentByClient.size());
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

package by.beaty.place.repository;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Users;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {

    List<Appointment> getAppointmentByMaster(Users master);

    List<Appointment> getAppointmentByClient(Users client);
}

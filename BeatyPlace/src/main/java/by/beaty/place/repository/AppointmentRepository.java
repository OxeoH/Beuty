package by.beaty.place.repository;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Users;
import by.beaty.place.model.common.AppointmentStatus;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {

    List<Appointment> getAppointmentByMaster(Users master);

    List<Appointment> getAppointmentByClient(Users client);

    @Query("SELECT a FROM Appointment a WHERE a.client.username = :username or a.master.username = :username")
    List<Appointment> getAppointmentByUsername(@Param("username") String username);

    @Query("SELECT a FROM Appointment a WHERE (a.client.username = :username or a.master.username = :username) and a.category.id=:idCategory")
    List<Appointment> getAppointmentByUsernameAndCategory(@Param("username") String username,
            @Param("idCategory") Long idCategory);

    @Query("SELECT COUNT(a) FROM Appointment a WHERE a.master.id = :masterId")
    Long countAppointmentsByMasterId(@Param("masterId") Long masterId);

    @Query("SELECT a.category.name, COUNT(a) FROM Appointment a GROUP BY a.category.name")
    List<Object[]> countAppointmentsByService();

    @Query(value = "SELECT DATE(a.appointment_date), COUNT(a) FROM appointments a GROUP BY DATE(a.appointment_date)", nativeQuery = true)
    List<Object[]> countAppointmentsByDate();

    @Query(value = "SELECT EXISTS (SELECT 1 FROM appointments a WHERE a.id = :id AND "
            + "a.client_id = :idClient)",
            nativeQuery = true)
    boolean hasClientAppointmentById(@Param("id") Long id, @Param("idClient") Long idClient);

    //TODO Тест
    @Query(value = "SELECT EXISTS (SELECT 1 FROM appointments a WHERE a.id = :id AND "
            + "a.master_id = :idMaster)",
            nativeQuery = true)
    boolean hasMasterAppointmentById(@Param("id") Long id, @Param("idMaster") Long idMaster);

    //TODO Тест
    @Query("SELECT COALESCE(SUM(a.category.price), 0.0) FROM Appointment a WHERE a.workSchedule.date = CURRENT_DATE")
    Double getTotalEarningsForToday();

    //TODO Тест
    @Query("SELECT COUNT(a.client.id) FROM Appointment a WHERE a.workSchedule.date = CURRENT_DATE")
    Long countClientsForToday();

    //TODO Тест
    @Query("SELECT COUNT(a.client.id) FROM Appointment a WHERE a.workSchedule.date >= :startDate")
    Long countClientsForLastMonth(@Param("startDate") LocalDate startDate);

    //TODO Тест
    @Query("SELECT COALESCE(SUM(a.category.price), 0) FROM Appointment a WHERE a.workSchedule.date >= :startDate")
    Long getTotalEarningsForLastMonth(@Param("startDate") LocalDate startDate);

    //TODO Тест
    @Query("SELECT a FROM Appointment a WHERE a.workSchedule.date >= :startOfMonth AND a.workSchedule.date <= :endOfMonth ORDER BY a.workSchedule.date DESC")
    List<Appointment> getLast10AppointmentInCurrentMonth(@Param("startOfMonth") LocalDate startOfMonth,
            @Param("endOfMonth") LocalDate endOfMonth, Pageable pageable);

    //TODO Тест
    @Modifying
    @Query("UPDATE Appointment a SET a.status = :status WHERE a.id = :id")
    void updateStatus(@Param("id") Long id, @Param("status") AppointmentStatus status);
}

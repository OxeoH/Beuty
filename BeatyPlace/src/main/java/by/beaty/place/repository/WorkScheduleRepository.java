package by.beaty.place.repository;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.service.dto.WorkScheduleDto;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkScheduleRepository extends JpaRepository<WorkSchedule, Long> {

    List<WorkSchedule> getAllByMaster(Users master);

    @Query("SELECT new by.beaty.place.service.dto.WorkScheduleDto(w.id, w.date, w.startTime, w.endTime) " +
            "FROM WorkSchedule w " +
            "WHERE w.master.id = :masterId " +
            "AND w.date = :date " +
            "AND w.status = 'FREE' " +
            "ORDER BY w.startTime")
    List<WorkScheduleDto> findAvailableSlots(@Param("masterId") Long masterId,
            @Param("date") LocalDate date);
}

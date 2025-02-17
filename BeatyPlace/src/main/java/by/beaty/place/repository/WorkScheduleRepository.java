package by.beaty.place.repository;

import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkScheduleRepository extends JpaRepository<WorkSchedule, Long> {

    List<WorkSchedule> getAllByMaster(Users master);
}

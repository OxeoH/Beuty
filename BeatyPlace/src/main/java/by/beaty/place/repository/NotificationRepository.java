package by.beaty.place.repository;

import by.beaty.place.model.Notification;
import by.beaty.place.model.Users;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

    List<Notification> getAllByUser(Users user);
}

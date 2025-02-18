package by.beaty.place.repository;

import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    List<Review> getAllByMaster(Users master);
}

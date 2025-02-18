package by.beaty.place.repository;

import by.beaty.place.model.SalonReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalonReviewRepository extends JpaRepository<SalonReview, Long> {

}

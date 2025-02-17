package by.beaty.place.repository;

import by.beaty.place.model.BlackList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BlackListRepository extends JpaRepository<BlackList, Long> {

    @Query("SELECT COUNT(b) > 0 FROM BlackList b WHERE b.user.username = :username AND (b.blockedUntil IS NULL OR b.blockedUntil > CURRENT_TIMESTAMP)")
    boolean isUserBlocked(@Param("username") String username);
}

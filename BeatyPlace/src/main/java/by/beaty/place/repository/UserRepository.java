package by.beaty.place.repository;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Users, Long> {

    Optional<Users> findByEmail(String email);

    Optional<Users> findByUsername(String username);

    List<Users> getAllByRole(Role role);
}

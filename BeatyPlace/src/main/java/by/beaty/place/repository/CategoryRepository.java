package by.beaty.place.repository;

import by.beaty.place.model.Category;
import java.math.BigDecimal;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

    Optional<Category> findByName(String name);

    @Query("SELECT c.price " +
            "FROM Category c " +
            "WHERE c.id = :categoryId ")
    BigDecimal getCategoryPriceById(@Param("categoryId") Long categoryId);
}

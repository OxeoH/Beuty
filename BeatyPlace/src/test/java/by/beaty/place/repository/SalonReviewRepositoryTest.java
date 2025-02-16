package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.SalonReview;
import by.beaty.place.model.Users;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class SalonReviewRepositoryTest extends BaseRepositoryTest {

    @Autowired
    private SalonReviewRepository salonReviewRepository;

    @Test
    void saveSalonReviewTest() {
        // GIVEN
        Users client = Users.builder()
                .id(3L)
                .build();
        SalonReview salonReview = new SalonReview();
        salonReview.setClient(client);
        salonReview.setComment("Comment");
        salonReview.setRating(4);
        salonReview.setCreatedAt(LocalDateTime.now());
        salonReviewRepository.save(salonReview);

        // WHEN
        Optional<SalonReview> salonReviewById = salonReviewRepository.findById(1L);

        // THEN
        assertNotNull(salonReviewById.get());
    }

    @Test
    void getAllSalonReviewTest() {
        // GIVEN | WHEN
        List<SalonReview> salonReviews = salonReviewRepository.findAll();

        // THEN
        assertTrue(salonReviews.size() > 1);
    }
}

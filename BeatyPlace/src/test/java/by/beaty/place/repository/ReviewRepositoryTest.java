package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import by.beaty.place.model.Review;
import by.beaty.place.model.Users;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class ReviewRepositoryTest extends BaseRepositoryTest {

    @Autowired
    private ReviewRepository reviewRepository;

    @Test
    void saveReviewTest() {
        // GIVEN
        Users master = getUsers(3L);
        Users client = getUsers(2L);
        Review review = Review.builder()
                .client(client)
                .master(master)
                .rating(5)
                .comment("Тестовый коммент")
                .createdAt(LocalDateTime.now())
                .build();

        // WHEN
        reviewRepository.save(review);

        // THEN
        List<Review> reviewByMaster = reviewRepository.getAllByMaster(master);
        assertEquals(2, reviewByMaster.size());
    }

    @Test
    void getAllReviewByUser() {
        // GIVEN
        Users master = getUsers(3L);

        // WHEN
        List<Review> reviewByMaster = reviewRepository.getAllByMaster(master);

        // THEN
        assertEquals(1, reviewByMaster.size());
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.BlackList;
import by.beaty.place.model.Users;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.time.LocalDateTime;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class BlackListRepositoryTest extends BaseRepositoryTest {

    public static final String USERNAME_BLOCKED_CLIENT = "client1";
    @Autowired
    private BlackListRepository blackListRepository;

    @Test
    void saveBlackListTest() {
        // GIVEN
        Users admin = getUsers(12L);
        Users client = getUsers(2L);
        BlackList blackList = BlackList.builder()
                .user(client)
                .blockedBy(admin)
                .blockedAt(LocalDateTime.of(2025, 2, 18, 12, 12))
                .blockedUntil(LocalDateTime.of(2026, 2, 18, 12, 12))
                .reason("Причина")
                .build();
        // WHEN
        blackListRepository.save(blackList);

        // THEN
        BlackList blackListById = blackListRepository.getReferenceById(1L);
        assertNotNull(blackListById);
    }

    @Test
    void isBlockedTest() {
        // GIVEN | WHEN
        boolean isBlockedUser = blackListRepository.isUserBlocked(USERNAME_BLOCKED_CLIENT);

        // THEN
        assertTrue(isBlockedUser);
    }

    private static Users getUsers(long id) {
        return Users.builder()
                .id(id)
                .build();
    }
}

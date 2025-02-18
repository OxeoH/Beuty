package by.beaty.place.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import by.beaty.place.model.Category;
import by.beaty.place.repository.config.BaseRepositoryTest;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class CategoryRepositoryTest extends BaseRepositoryTest {

    private static final String CATEGORY_NAME = "NewCategory";

    @Autowired
    private CategoryRepository categoryRepository;

    @Test
    void saveCategoryTest() {
        // GIVEN
        Category category = new Category();
        category.setName(CATEGORY_NAME);
        categoryRepository.save(category);

        // WHEN
        Optional<Category> categoryByName = categoryRepository.findByName(CATEGORY_NAME);

        // THEN
        assertNotNull(categoryByName.get());
    }

    @Test
    void getAllCategoryTest() {
        // GIVEN | WHEN
        List<Category> categoryList = categoryRepository.findAll();

        // THEN
        assertTrue(categoryList.size() > 1);
    }
}

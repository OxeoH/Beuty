package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.any;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Category;
import by.beaty.place.repository.CategoryRepository;
import by.beaty.place.service.exception.CategoryNotFoundException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class CategoryServiceImplTest {

    @Mock
    private CategoryRepository categoryRepository;

    @InjectMocks
    private CategoryServiceImpl categoryService;

    private static final Long CATEGORY_ID_1 = 1L;
    private static final Long CATEGORY_ID_2 = 2L;
    private static final String CATEGORY_NAME_1 = "Процедура 1";
    private static final String CATEGORY_NAME_2 = "Процедура 2";
    private static final BigDecimal CATEGORY_PRICE = new BigDecimal("100.00");

    private final Category category = Category.builder()
            .id(CATEGORY_ID_1)
            .name(CATEGORY_NAME_1)
            .build();

    @Test
    void getAllTest_Success() {
        // GIVEN
        Category category1 = Category.builder()
                .id(CATEGORY_ID_1)
                .name(CATEGORY_NAME_1)
                .build();
        Category category2 = Category.builder()
                .id(CATEGORY_ID_2)
                .name(CATEGORY_NAME_2)
                .build();

        when(categoryRepository.findAll()).thenReturn(Arrays.asList(category1, category2));

        // WHEN
        List<Category> categories = categoryService.getAll();

        // THEN
        assertNotNull(categories);
        assertEquals(2, categories.size());
        assertEquals(CATEGORY_NAME_1, categories.get(0).getName());
        assertEquals(CATEGORY_NAME_2, categories.get(1).getName());
        verify(categoryRepository, times(1)).findAll();
    }

    @Test
    void getAllTest_EmptyList() {
        // GIVEN
        when(categoryRepository.findAll()).thenReturn(List.of());

        // WHEN
        List<Category> categories = categoryService.getAll();

        // THEN
        assertNotNull(categories);
        assertTrue(categories.isEmpty());
        verify(categoryRepository, times(1)).findAll();
    }

    @Test
    void getByIdTest_Success() {
        // GIVEN
        when(categoryRepository.findById(CATEGORY_ID_1)).thenReturn(Optional.of(category));

        // WHEN
        Category result = categoryService.getById(CATEGORY_ID_1);

        // THEN
        assertNotNull(result);
        assertEquals(CATEGORY_ID_1, result.getId());
        assertEquals(CATEGORY_NAME_1, result.getName());
        verify(categoryRepository, times(1)).findById(CATEGORY_ID_1);
    }

    @Test
    void getByIdTest_CategoryNotFound() {
        // GIVEN
        when(categoryRepository.findById(CATEGORY_ID_1)).thenReturn(Optional.empty());

        // WHEN
        CategoryNotFoundException exception = assertThrows(CategoryNotFoundException.class, () -> {
            categoryService.getById(CATEGORY_ID_1);
        });

        // THEN
        assertEquals("Категория с идентификатором 1 не найден", exception.getMessage());
        verify(categoryRepository, times(1)).findById(CATEGORY_ID_1);
    }

    @Test
    void getByIdTest_NullId() {
        // GIVEN | WHEN
        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () -> {
            categoryService.getById(null);
        });

        // THEN
        assertEquals("Идентификатор категори не может быть null", exception.getMessage());
        verify(categoryRepository, never()).findById(anyLong());
    }

    @Test
    void createTestCategory() {
        // GIVEN
        when(categoryRepository.save(any(Category.class))).thenReturn(Category.builder().build());

        // WHEN
        categoryService.createCategory(category);

        // THEN
        verify(categoryRepository, times(1)).save(category);
    }

    @Test
    void getCategoryPriceById_Success() {
        // GIVEN
        when(categoryRepository.getCategoryPriceById(CATEGORY_ID_1)).thenReturn(CATEGORY_PRICE);

        // WHEN
        BigDecimal result = categoryService.getCategoryPriceById(CATEGORY_ID_1);

        // GIVEN
        assertNotNull(result);
        assertEquals(CATEGORY_PRICE, result);
        verify(categoryRepository, times(1)).getCategoryPriceById(CATEGORY_ID_1);
    }

    @Test
    void getCategoryPriceById_NotFound() {
        // GIVEN
        when(categoryRepository.getCategoryPriceById(CATEGORY_ID_1)).thenReturn(null);

        // WHEN
        BigDecimal result = categoryService.getCategoryPriceById(CATEGORY_ID_1);

        // THEN
        assertNull(result);
        verify(categoryRepository, times(1)).getCategoryPriceById(CATEGORY_ID_1);
    }
}
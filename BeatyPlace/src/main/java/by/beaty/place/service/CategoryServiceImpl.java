package by.beaty.place.service;

import by.beaty.place.model.Category;
import by.beaty.place.repository.CategoryRepository;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.exception.CategoryNotFoundException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class CategoryServiceImpl implements CategoryServiceApi {

    private final CategoryRepository categoryRepository;

    @Override
    public List<Category> getAll() {
        List<Category> categories = categoryRepository.findAll();
        log.info("Получение всех категорий процендур в количестве {} {}", categories.size(), LocalDateTime.now());
        return categories;
    }

    @Override
    public Category getById(Long idCategory) {
        if (idCategory == null) {
            throw new IllegalArgumentException("Идентификатор категори не может быть null");
        }
        Category categoryById = categoryRepository.findById(idCategory)
                .orElseThrow(() -> new CategoryNotFoundException(
                        String.format("Категория с идентификатором %s не найден", idCategory)));
        log.info("Получение категории по идентификатору {} {}", idCategory, LocalDateTime.now());
        return categoryById;
    }

    @Override
    public void createCategory(Category category) {
        categoryRepository.save(category);
        log.info("Создание категории с наименованием {} {}", category.getName(), LocalDateTime.now());
    }

    @Override
    public BigDecimal getCategoryPriceById(Long categoryId) {
        BigDecimal categoryPriceById = categoryRepository.getCategoryPriceById(categoryId);
        log.info("Получение стоимости процедуры по категории c идентификатором {} {}", categoryId, LocalDateTime.now());
        return categoryPriceById;
    }
}

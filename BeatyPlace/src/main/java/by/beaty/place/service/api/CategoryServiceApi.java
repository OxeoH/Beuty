package by.beaty.place.service.api;

import by.beaty.place.model.Category;
import java.math.BigDecimal;
import java.util.List;

public interface CategoryServiceApi {

    List<Category> getAll();

    Category getById(Long idCategory);

    void createCategory(Category category);

    BigDecimal getCategoryPriceById(Long categoryId);

}

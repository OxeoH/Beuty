package by.beaty.place.controller;

import by.beaty.place.model.Category;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.MasterResponseDto;
import by.beaty.place.service.dto.WorkScheduleDto;
import by.beaty.place.service.dto.util.MasterMapper;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/info")
@RequiredArgsConstructor
public class InfoRestController {

    private final CategoryServiceApi categoryServiceApi;
    private final WorkScheduleServiceApi workScheduleServiceApi;

    @GetMapping("/getMastersByCategory/{categoryId}")
    @ResponseBody
    public List<MasterResponseDto> getMastersByCategory(@PathVariable Long categoryId) {
        Category categoryById = categoryServiceApi.getById(categoryId);
        return categoryById.getMasters()
                .stream()
                .map(MasterMapper::fromUser)
                .collect(Collectors.toList());
    }

    @GetMapping("/master/slot/available")
    @ResponseBody
    public ResponseEntity<List<WorkScheduleDto>> getAvailableTime(@RequestParam Long masterId,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date) {
        List<WorkScheduleDto> availableSlots = workScheduleServiceApi.findAvailableSlots(masterId, date);
        return ResponseEntity.ok(availableSlots);
    }

    @GetMapping("/categoryPrice/{categoryId}")
    @ResponseBody
    public ResponseEntity<BigDecimal> getCategoryPrice(@PathVariable Long categoryId) {
        BigDecimal categoryPriceById = categoryServiceApi.getCategoryPriceById(categoryId);
        return ResponseEntity.ok(categoryPriceById);
    }
}

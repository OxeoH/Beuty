package by.beaty.place.service;

import static by.beaty.place.service.util.ExcelStyleUtil.createDataStyle;
import static by.beaty.place.service.util.ExcelStyleUtil.createHeaderStyle;
import static by.beaty.place.service.util.ExcelStyleUtil.createStyledRow;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.repository.UserRepository;
import by.beaty.place.service.api.ExcelExporterApi;
import by.beaty.place.service.exception.ReportGenerationException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ExcelExporterImpl implements ExcelExporterApi {

    private final AppointmentRepository appointmentRepository;
    private final UserRepository userRepository;

    @Override
    public ByteArrayInputStream generateAppointmentsReport() {
        try {
            Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet("Appointments Report");
            AtomicInteger rowNum = new AtomicInteger();

            createHeaders(sheet, rowNum, workbook);
            Map<String, Long> appointmentsByMaster = getAppointmentsByMaster();
            Map<String, Long> appointmentsByService = getAppointmentsByService();
            Map<LocalDate, Long> appointmentsByDate = getAppointmentsByDate();

            fillMasterData(sheet, rowNum, appointmentsByMaster, workbook);
            fillStatistics(sheet, rowNum, appointmentsByMaster, appointmentsByDate, workbook);
            fillTopMasters(sheet, rowNum, appointmentsByMaster, workbook);
            fillServiceData(sheet, rowNum, appointmentsByService, workbook);
            fillDateData(sheet, rowNum, appointmentsByDate, workbook);

            autoSizeColumns(sheet, 2);

            ByteArrayOutputStream out = new ByteArrayOutputStream();
            workbook.write(out);
            workbook.close();
            log.info("Генерация отчета в формате excel {}", LocalDateTime.now());
            return new ByteArrayInputStream(out.toByteArray());
        } catch (IOException e) {
            log.error("Ошибка при генерации отчета {} {}", e.getMessage(), LocalDateTime.now());
            throw new ReportGenerationException("Error generating appointments report", e);
        }
    }

    private void createHeaders(Sheet sheet, AtomicInteger rowNum, Workbook workbook) {
        Row headerRow = sheet.createRow(rowNum.getAndIncrement());
        CellStyle headerStyle = createHeaderStyle(workbook);

        Cell masterHeader = headerRow.createCell(0);
        masterHeader.setCellValue("Мастер");
        masterHeader.setCellStyle(headerStyle);

        Cell countHeader = headerRow.createCell(1);
        countHeader.setCellValue("Количество записей");
        countHeader.setCellStyle(headerStyle);
    }

    private void fillDateData(Sheet sheet, AtomicInteger rowNum, Map<LocalDate, Long> appointmentsByDate, Workbook workbook) {
        CellStyle headerStyle = createHeaderStyle(workbook);
        CellStyle dataStyle = createDataStyle(workbook);

        createStyledRow(sheet, rowNum, new String[]{"Дата", "Количество записей"}, headerStyle);

        for (Map.Entry<LocalDate, Long> entry : appointmentsByDate.entrySet()) {
            createStyledRow(sheet, rowNum, new Object[]{entry.getKey().toString(), entry.getValue()}, dataStyle);
        }
    }

    private void fillServiceData(Sheet sheet, AtomicInteger rowNum, Map<String, Long> appointmentsByService, Workbook workbook) {
        CellStyle headerStyle = createHeaderStyle(workbook);
        CellStyle dataStyle = createDataStyle(workbook);

        createStyledRow(sheet, rowNum, new String[]{"Услуга", "Количество записей"}, headerStyle);

        for (Map.Entry<String, Long> entry : appointmentsByService.entrySet()) {
            createStyledRow(sheet, rowNum, new Object[]{entry.getKey(), entry.getValue()}, dataStyle);
        }
    }

    private void fillTopMasters(Sheet sheet, AtomicInteger rowNum, Map<String, Long> appointmentsByMaster, Workbook workbook) {
        CellStyle headerStyle = createHeaderStyle(workbook);
        CellStyle dataStyle = createDataStyle(workbook);

        createStyledRow(sheet, rowNum, new String[]{"ТОП-3 мастеров", "Количество записей"}, headerStyle);

        List<Map.Entry<String, Long>> topMasters = appointmentsByMaster.entrySet().stream()
                .sorted((e1, e2) -> Long.compare(e2.getValue(), e1.getValue()))
                .limit(3)
                .toList();

        for (Map.Entry<String, Long> entry : topMasters) {
            createStyledRow(sheet, rowNum, new Object[]{entry.getKey(), entry.getValue()}, dataStyle);
        }

        long totalAppointments = appointmentsByMaster.values().stream().mapToLong(Long::longValue).sum();
        long topAppointments = topMasters.stream().mapToLong(Map.Entry::getValue).sum();
        double topMastersPercentage = (double) topAppointments / totalAppointments * 100;

        createStyledRow(sheet, rowNum,
                new Object[]{"Процент записей ТОП-3 мастеров", String.format("%.2f%%", topMastersPercentage)}, dataStyle);
    }

    private void fillStatistics(Sheet sheet, AtomicInteger rowNum, Map<String, Long> appointmentsByMaster,
            Map<LocalDate, Long> appointmentsByDate, Workbook workbook) {
        CellStyle dataStyle = createDataStyle(workbook);

        long totalAppointments = appointmentsByMaster.values().stream().mapToLong(Long::longValue).sum();
        double avgAppointmentsPerMaster = appointmentsByMaster.values().stream().mapToLong(Long::longValue).average().orElse(0);
        double avgAppointmentsPerDay = appointmentsByDate.values().stream().mapToLong(Long::longValue).average().orElse(0);
        long maxAppointmentsInDay = appointmentsByDate.values().stream().mapToLong(Long::longValue).max().orElse(0);
        long minAppointmentsInDay = appointmentsByDate.values().stream().mapToLong(Long::longValue).min().orElse(0);

        addStatisticRow(sheet, rowNum, "Общее количество записей", totalAppointments, dataStyle);
        addStatisticRow(sheet, rowNum, "Среднее количество записей на мастера", avgAppointmentsPerMaster, dataStyle);
        addStatisticRow(sheet, rowNum, "Среднее количество записей в день", avgAppointmentsPerDay, dataStyle);
        addStatisticRow(sheet, rowNum, "Максимальное количество записей за день", maxAppointmentsInDay, dataStyle);
        addStatisticRow(sheet, rowNum, "Минимальное количество записей за день", minAppointmentsInDay, dataStyle);
    }

    private void addStatisticRow(Sheet sheet, AtomicInteger rowNum, String label, double value, CellStyle style) {
        createStyledRow(sheet, rowNum, new Object[]{label, value}, style);
    }

    private void fillMasterData(Sheet sheet, AtomicInteger rowNum, Map<String, Long> appointmentsByMaster, Workbook workbook) {
        CellStyle dataStyle = createDataStyle(workbook);

        for (Map.Entry<String, Long> entry : appointmentsByMaster.entrySet()) {
            Row row = sheet.createRow(rowNum.getAndIncrement());
            Cell nameCell = row.createCell(0);
            nameCell.setCellValue(entry.getKey());
            nameCell.setCellStyle(dataStyle);

            Cell countCell = row.createCell(1);
            countCell.setCellValue(entry.getValue());
            countCell.setCellStyle(dataStyle);
        }
    }

    private Map<String, Long> getAppointmentsByMaster() {
        List<Users> masters = userRepository.getAllByRole(Role.MASTER);
        Map<String, Long> appointmentsByMaster = new HashMap<>();

        for (Users master : masters) {
            Long count = appointmentRepository.countAppointmentsByMasterId(master.getId());
            appointmentsByMaster.put(master.getFullName(), count);
        }
        return appointmentsByMaster;
    }

    private Map<String, Long> getAppointmentsByService() {
        List<Object[]> results = appointmentRepository.countAppointmentsByService();
        Map<String, Long> appointmentsByService = new HashMap<>();

        for (Object[] result : results) {
            String categoryName = (String) result[0];
            Long appointmentCount = (Long) result[1];
            appointmentsByService.put(categoryName, appointmentCount);
        }

        return appointmentsByService;
    }

    private Map<LocalDate, Long> getAppointmentsByDate() {
        List<Object[]> results = appointmentRepository.countAppointmentsByDate();
        return results.stream()
                .collect(Collectors.toMap(
                        result -> ((java.sql.Date) result[0]).toLocalDate(),
                        result -> (Long) result[1]
                ));
    }

    private void autoSizeColumns(Sheet sheet, int columnCount) {
        for (int i = 0; i < columnCount; i++) {
            sheet.autoSizeColumn(i);
        }
    }
}

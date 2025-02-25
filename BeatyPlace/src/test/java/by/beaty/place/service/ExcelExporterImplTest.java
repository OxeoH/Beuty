package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Users;
import by.beaty.place.model.common.Role;
import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.repository.UserRepository;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.jetbrains.annotations.NotNull;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class ExcelExporterImplTest {

    @Mock
    private AppointmentRepository appointmentRepository;
    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private ExcelExporterImpl excelExporter;

    @Test
    void generateAppointmentsReport() throws IOException {
        // GIVEN
        List<Users> masters = Arrays.asList(getUser("Master User 1", 1L), getUser("Master User 2", 2L));
        when(userRepository.getAllByRole(Role.MASTER)).thenReturn(masters);

        when(appointmentRepository.countAppointmentsByMasterId(1L)).thenReturn(5L);
        when(appointmentRepository.countAppointmentsByMasterId(2L)).thenReturn(3L);

        when(appointmentRepository.countAppointmentsByService()).thenReturn(Arrays.asList(
                new Object[]{"Service 1", 4L},
                new Object[]{"Service 2", 6L}
        ));

        when(appointmentRepository.countAppointmentsByDate()).thenReturn(Arrays.asList(
                new Object[]{java.sql.Date.valueOf("2025-02-25"), 4L},
                new Object[]{java.sql.Date.valueOf("2025-02-26"), 6L}
        ));

        // WHEN | THEN
        ByteArrayInputStream report = excelExporter.generateAppointmentsReport();
        XSSFWorkbook workbook = new XSSFWorkbook(report);
        Sheet sheet = workbook.getSheetAt(0);

        Row headerRow = sheet.getRow(0);
        assertNotNull(headerRow);
        assertEquals("Мастер", headerRow.getCell(0).getStringCellValue());
        assertEquals("Количество записей", headerRow.getCell(1).getStringCellValue());

        Row masterRow1 = sheet.getRow(1);
        assertEquals("Master User 2", masterRow1.getCell(0).getStringCellValue());
        assertEquals(3L, masterRow1.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow2 = sheet.getRow(2);
        assertEquals("Master User 1", masterRow2.getCell(0).getStringCellValue());
        assertEquals(5L, masterRow2.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow3 = sheet.getRow(3);
        assertEquals("Общее количество записей", masterRow3.getCell(0).getStringCellValue());
        assertEquals(8L, masterRow3.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow4 = sheet.getRow(4);
        assertEquals("Среднее количество записей на мастера", masterRow4.getCell(0).getStringCellValue());
        assertEquals(4L, masterRow4.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow5 = sheet.getRow(5);
        assertEquals("Среднее количество записей в день", masterRow5.getCell(0).getStringCellValue());
        assertEquals(5L, masterRow5.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow6 = sheet.getRow(6);
        assertEquals("Максимальное количество записей за день", masterRow6.getCell(0).getStringCellValue());
        assertEquals(6L, masterRow6.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow7 = sheet.getRow(7);
        assertEquals("Минимальное количество записей за день", masterRow7.getCell(0).getStringCellValue());
        assertEquals(4L, masterRow7.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow8 = sheet.getRow(8);
        assertEquals("ТОП-3 мастеров", masterRow8.getCell(0).getStringCellValue());
        assertEquals("Количество записей", masterRow8.getCell(1).getStringCellValue());

        Row masterRow9 = sheet.getRow(9);
        assertEquals("Master User 1", masterRow9.getCell(0).getStringCellValue());
        assertEquals(5L, masterRow9.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow10 = sheet.getRow(10);
        assertEquals("Master User 2", masterRow10.getCell(0).getStringCellValue());
        assertEquals(3L, masterRow10.getCell(1).getNumericCellValue(), 0.1);

        Row masterRow11 = sheet.getRow(11);
        assertEquals("Процент записей ТОП-3 мастеров", masterRow11.getCell(0).getStringCellValue());
        assertEquals("100,00%", masterRow11.getCell(1).getStringCellValue());

        Row serviceRow1 = sheet.getRow(12);
        assertEquals("Услуга", serviceRow1.getCell(0).getStringCellValue());
        assertEquals("Количество записей", serviceRow1.getCell(1).getStringCellValue());

        Row serviceRow2 = sheet.getRow(13);
        assertEquals("Service 2", serviceRow2.getCell(0).getStringCellValue());
        assertEquals(6L, serviceRow2.getCell(1).getNumericCellValue(), 0.1);

        Row serviceRow3 = sheet.getRow(14);
        assertEquals("Service 1", serviceRow3.getCell(0).getStringCellValue());
        assertEquals(4L, serviceRow3.getCell(1).getNumericCellValue(), 0.1);

        Row dateRow1 = sheet.getRow(15);
        assertEquals("Дата", dateRow1.getCell(0).getStringCellValue());
        assertEquals("Количество записей", dateRow1.getCell(1).getStringCellValue());

        Row dateRow2 = sheet.getRow(16);
        assertEquals("2025-02-26", dateRow2.getCell(0).getStringCellValue());
        assertEquals(6L, dateRow2.getCell(1).getNumericCellValue(), 0.1);

        Row dateRow3 = sheet.getRow(17);
        assertEquals("2025-02-25", dateRow3.getCell(0).getStringCellValue());
        assertEquals(4L, dateRow3.getCell(1).getNumericCellValue(), 0.1);

        workbook.close();
    }

    @NotNull
    private static Users getUser(String fullname, Long id) {
        return Users.builder()
                .id(id)
                .fullName(fullname)
                .build();
    }
}
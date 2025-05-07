package by.beaty.place.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.repository.AppointmentRepository;
import java.time.LocalDate;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class AppointmentStaticsServiceImplTest {

    @InjectMocks
    private AppointmentStaticsServiceImpl appointmentStaticsService;

    @Mock
    private AppointmentRepository appointmentRepository;

    private static final LocalDate LAST_MONTH = LocalDate.now().minusMonths(1);

    @Test
    void getTotalEarningsForToday_shouldReturnCorrectValue() {
        // GIVEN
        Double expectedEarnings = 1500.0;
        when(appointmentRepository.getTotalEarningsForToday()).thenReturn(expectedEarnings);

        // WHEN
        Double actualEarnings = appointmentStaticsService.getTotalEarningsForToday();

        // THEN
        Assertions.assertEquals(expectedEarnings, actualEarnings);
        verify(appointmentRepository, times(1)).getTotalEarningsForToday();
    }

    @Test
    void countClientsForToday_shouldReturnCorrectCount() {
        // GIVEN
        Long expectedCount = 5L;
        when(appointmentRepository.countClientsForToday()).thenReturn(expectedCount);

        // WHEN
        Long actualCount = appointmentStaticsService.countClientsForToday();

        // THEN
        Assertions.assertEquals(expectedCount, actualCount);
        verify(appointmentRepository, times(1)).countClientsForToday();
    }

    @Test
    void countClientsForLastMonth_shouldReturnCorrectCount() {
        // GIVEN
        Long expectedCount = 12L;
        when(appointmentRepository.countClientsForLastMonth(LAST_MONTH)).thenReturn(expectedCount);

        // WHEN
        Long actualCount = appointmentStaticsService.countClientsForLastMonth();

        // THEN
        Assertions.assertEquals(expectedCount, actualCount);
        verify(appointmentRepository, times(1)).countClientsForLastMonth(LAST_MONTH);
    }

    @Test
    void getTotalEarningsForLastMonth_shouldReturnCorrectAmount() {
        // GIVEN
        Long expectedEarnings = 25_000L;
        when(appointmentRepository.getTotalEarningsForLastMonth(LAST_MONTH)).thenReturn(expectedEarnings);

        // WHEN
        Long actualEarnings = appointmentStaticsService.getTotalEarningsForLastMonth();

        // THEN
        Assertions.assertEquals(expectedEarnings, actualEarnings);
        verify(appointmentRepository, times(1)).getTotalEarningsForLastMonth(LAST_MONTH);
    }
}
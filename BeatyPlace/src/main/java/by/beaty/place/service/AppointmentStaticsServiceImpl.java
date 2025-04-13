package by.beaty.place.service;

import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.service.api.AppointmentStaticsServiceApi;
import java.time.LocalDate;
import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class AppointmentStaticsServiceImpl implements AppointmentStaticsServiceApi {

    private static final LocalDate LAST_MONTH = LocalDate.now().minusMonths(1);

    private final AppointmentRepository appointmentRepository;

    @Override
    public Double getTotalEarningsForToday() {
        Double totalEarningsForToday = appointmentRepository.getTotalEarningsForToday();
        log.info("Получение суммы заработаной за сегодня {} {}", totalEarningsForToday, LocalDateTime.now());
        return totalEarningsForToday;
    }

    @Override
    public Long countClientsForToday() {
        Long countClientForToday = appointmentRepository.countClientsForToday();
        log.info("Получение количества клиентов за сегодня {} {}", countClientForToday, LocalDateTime.now());
        return countClientForToday;
    }

    @Override
    public Long countClientsForLastMonth() {
        Long countClientForToday = appointmentRepository.countClientsForLastMonth(LAST_MONTH);
        log.info("Получение количества клиентов за последний месяц {} {}", countClientForToday, LocalDateTime.now());
        return countClientForToday;
    }

    @Override
    public Long getTotalEarningsForLastMonth() {
        Long totalEarningsForLastMonth = appointmentRepository.getTotalEarningsForLastMonth(LAST_MONTH);
        log.info("Получение суммы за последний месяц {} {}", totalEarningsForLastMonth, LocalDateTime.now());
        return totalEarningsForLastMonth;
    }
}

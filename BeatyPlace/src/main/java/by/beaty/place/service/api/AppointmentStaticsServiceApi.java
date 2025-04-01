package by.beaty.place.service.api;

import java.time.LocalDate;
import org.springframework.data.repository.query.Param;

public interface AppointmentStaticsServiceApi {

    //TODO Тест
    Double getTotalEarningsForToday();

    //TODO Тест
    Long countClientsForToday();

    //TODO Тест
    Long countClientsForLastMonth();

    //TODO Тест
    Long getTotalEarningsForLastMonth();
}

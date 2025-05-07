package by.beaty.place.service.api;

public interface AppointmentStaticsServiceApi {

    Double getTotalEarningsForToday();

    Long countClientsForToday();

    Long countClientsForLastMonth();

    Long getTotalEarningsForLastMonth();
}

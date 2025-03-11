package by.beaty.place.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import by.beaty.place.model.Appointment;
import by.beaty.place.model.Category;
import by.beaty.place.model.Users;
import by.beaty.place.model.WorkSchedule;
import by.beaty.place.model.common.SlotStatus;
import by.beaty.place.repository.AppointmentRepository;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.WorkScheduleServiceApi;
import by.beaty.place.service.dto.AppointmentRequestDto;
import by.beaty.place.service.dto.UserRequestDto;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class AppointmentServiceImplTest {

    @Mock
    private AppointmentRepository appointmentRepository;
    @Mock
    private CategoryServiceApi categoryService;
    @Mock
    private WorkScheduleServiceApi workScheduleServiceApi;

    @InjectMocks
    private AppointmentServiceImpl appointmentService;

    private UserRequestDto masterRequest;
    private UserRequestDto clientRequest;
    private String username;
    private Category category;
    private AppointmentRequestDto appointmentRequestDto;

    @BeforeEach
    void setUp() {
        masterRequest = UserRequestDto.builder()
                .id(1L)
                .build();
        clientRequest = UserRequestDto.builder()
                .id(1L)
                .build();
        category = Category.builder()
                .id(1L)
                .name("Test Category")
                .build();
        appointmentRequestDto = AppointmentRequestDto.builder()
                .clientId(1L)
                .masterId(2L)
                .categoryId(3L)
                .slotId(4L)
                .price(BigDecimal.valueOf(1000.0))
                .build();
        username = "testUser";
    }

    @Test
    void getAppointmentByMasterTest_success() {
        // GIVEN
        Users master = Users.builder().id(1L).build();
        Appointment appointment1 = Appointment.builder().id(1L).master(master).build();
        Appointment appointment2 = Appointment.builder().id(2L).master(master).build();
        List<Appointment> appointments = List.of(appointment1, appointment2);
        when(appointmentRepository.getAppointmentByMaster(any())).thenReturn(appointments);

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByMaster(masterRequest);

        // THEN
        assertEquals(2, result.size());
        result.forEach(appointment -> assertEquals(1L, appointment.getMaster().getId()));
        verify(appointmentRepository, times(1)).getAppointmentByMaster(any());
    }

    @Test
    void getAppointmentByMasterTest_noAppointments() {
        // GIVEN
        when(appointmentRepository.getAppointmentByMaster(any())).thenReturn(Collections.emptyList());

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByMaster(masterRequest);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, times(1)).getAppointmentByMaster(any());
    }

    @Test
    void getAppointmentByClientTest_success() {
        // GIVEN
        Users client = Users.builder().id(1L).build();
        Appointment appointment1 = Appointment.builder().id(1L).client(client).build();
        Appointment appointment2 = Appointment.builder().id(2L).client(client).build();
        List<Appointment> appointments = List.of(appointment1, appointment2);
        when(appointmentRepository.getAppointmentByClient(any())).thenReturn(appointments);

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByClient(clientRequest);

        // THEN
        assertEquals(2, result.size());
        result.forEach(appointment -> assertEquals(1L, appointment.getClient().getId()));
        verify(appointmentRepository, times(1)).getAppointmentByClient(any());
    }

    @Test
    void getAppointmentByClientTest_noAppointments() {
        // GIVEN
        when(appointmentRepository.getAppointmentByClient(any())).thenReturn(Collections.emptyList());

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByClient(clientRequest);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, times(1)).getAppointmentByClient(any());
    }

    @Test
    void getAppointmentByUsername_success() {
        // GIVEN
        Users client = Users.builder().id(999L).username(username).build();
        Appointment appointment1 = Appointment.builder().id(2L).client(client).build();
        Appointment appointment2 = Appointment.builder().id(2L).client(client).build();
        List<Appointment> appointments = List.of(appointment1, appointment2);
        when(appointmentRepository.getAppointmentByUsername(username)).thenReturn(appointments);

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsername(username);

        // THEN
        assertEquals(2, result.size());
        result.forEach(appointment -> assertEquals(username, appointment.getClient().getUsername()));
        verify(appointmentRepository, times(1)).getAppointmentByUsername(username);
    }

    @Test
    void getAppointmentByUsernameTest_emptyList() {
        // GIVEN
        when(appointmentRepository.getAppointmentByUsername(username)).thenReturn(Collections.emptyList());

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsername(username);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, times(1)).getAppointmentByUsername(username);
    }

    @Test
    void getAppointmentByUsernameTest_blankUsername() {
        // GIVEN
        String blankUsername = "";

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsername(blankUsername);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, never()).getAppointmentByUsername(blankUsername);
    }

    @Test
    void getAppointmentByUsernameTest_usernameNotFound() {
        // GIVEN
        String nonExistingUsername = "nonExistingUser";
        when(appointmentRepository.getAppointmentByUsername(nonExistingUsername)).thenReturn(Collections.emptyList());

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsername(nonExistingUsername);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, times(1)).getAppointmentByUsername(nonExistingUsername);
    }

    @Test
    void getAppointmentByUsernameAndCategoryTest_success() {
        // GIVEN
        Users client = Users.builder().id(999L).username(username).build();
        Appointment appointment1 = Appointment.builder().id(1L).client(client).category(category).build();
        Appointment appointment2 = Appointment.builder().id(2L).client(client).category(category).build();
        List<Appointment> appointments = List.of(appointment1, appointment2);

        when(categoryService.getById(category.getId())).thenReturn(category);
        when(appointmentRepository.getAppointmentByUsernameAndCategory(username, category.getId())).thenReturn(appointments);

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsernameAndCategory(username, category);

        // THEN
        assertEquals(2, result.size());
        result.forEach(appointment -> {
            assertEquals(username, appointment.getClient().getUsername());
            assertEquals(category.getId(), appointment.getCategory().getId());
        });
        verify(appointmentRepository, times(1)).getAppointmentByUsernameAndCategory(username, category.getId());
    }

    @Test
    void getAppointmentByUsernameAndCategoryTest_emptyList() {
        // GIVEN
        when(categoryService.getById(category.getId())).thenReturn(category);
        when(appointmentRepository.getAppointmentByUsernameAndCategory(username, category.getId())).thenReturn(
                Collections.emptyList());

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsernameAndCategory(username, category);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, times(1)).getAppointmentByUsernameAndCategory(username, category.getId());
    }

    @Test
    void getAppointmentByUsernameAndCategoryTest_blankUsername() {
        // GIVEN
        String blankUsername = "";

        when(categoryService.getById(category.getId())).thenReturn(category);

        // WHEN
        List<Appointment> result = appointmentService.getAppointmentByUsernameAndCategory(blankUsername, category);

        // THEN
        assertTrue(result.isEmpty());
        verify(appointmentRepository, never()).getAppointmentByUsernameAndCategory(blankUsername, category.getId());
    }

    @Test
    void createAppointment_success() {
        // GIVEN
        Appointment appointment = Appointment.builder()
                .id(1L)
                .client(Users.builder().id(appointmentRequestDto.getClientId()).build())
                .master(Users.builder().id(appointmentRequestDto.getMasterId()).build())
                .category(Category.builder().id(appointmentRequestDto.getCategoryId()).build())
                .workSchedule(WorkSchedule.builder().id(appointmentRequestDto.getSlotId()).build())
                .price(appointmentRequestDto.getPrice())
                .build();

        when(appointmentRepository.save(any(Appointment.class))).thenReturn(appointment);
        doNothing().when(workScheduleServiceApi).updateStatusWorkSchedule(appointmentRequestDto.getSlotId(), SlotStatus.BOOKED);

        // WHEN
        Appointment createdAppointment = appointmentService.createAppointment(appointmentRequestDto);

        // THEN
        assertNotNull(createdAppointment);
        assertEquals(appointmentRequestDto.getClientId(), createdAppointment.getClient().getId());
        assertEquals(appointmentRequestDto.getMasterId(), createdAppointment.getMaster().getId());
        assertEquals(appointmentRequestDto.getCategoryId(), createdAppointment.getCategory().getId());
        assertEquals(appointmentRequestDto.getSlotId(), createdAppointment.getWorkSchedule().getId());
        assertEquals(appointmentRequestDto.getPrice(), createdAppointment.getPrice());
        verify(appointmentRepository, times(1)).save(any(Appointment.class));
        verify(workScheduleServiceApi, times(1)).updateStatusWorkSchedule(appointmentRequestDto.getSlotId(), SlotStatus.BOOKED);
    }

    @Test
    void createAppointment_withInvalidRequest_shouldThrowException() {
        // GIVEN
        appointmentRequestDto.setClientId(null);

        // WHEN | THEN
        assertThrows(IllegalArgumentException.class, () -> appointmentService.createAppointment(appointmentRequestDto));
    }
}
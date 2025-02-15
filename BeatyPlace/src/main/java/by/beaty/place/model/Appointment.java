package by.beaty.place.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "appointments")
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "client_id", nullable = false)
    private Users client; // Клиент, который записался

    @ManyToOne
    @JoinColumn(name = "master_id", nullable = false)
    private Users master; // Мастер, к которому записались

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category; // Категория процедуры

    @Column(nullable = false)
    private LocalDateTime appointmentDate;

    @Column
    private String clientNote;

    @Column(nullable = false)
    private BigDecimal price;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private AppointmentStatus status; // Статус записи (например, PENDING, CONFIRMED, CANCELED)
}


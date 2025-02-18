package by.beaty.place.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "blacklist")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class BlackList {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private Users user;

    @Column(nullable = false)
    private String reason;

    @Column
    private LocalDateTime blockedUntil;

    @ManyToOne
    @JoinColumn(name = "blocked_by", nullable = false)
    private Users blockedBy;

    @Column(nullable = false)
    private LocalDateTime blockedAt = LocalDateTime.now();
}


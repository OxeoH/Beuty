package by.beaty.place.controller;

import by.beaty.place.service.api.ExcelExporterApi;
import jakarta.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/report")
@RequiredArgsConstructor
public class ReportController {

    private final ExcelExporterApi excelExporter;

    @GetMapping("/appointments")
    public ResponseEntity<byte[]> generateAppointmentsReport(HttpServletResponse response) throws IOException {
        ByteArrayInputStream reportStream = excelExporter.generateAppointmentsReport();

        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition",
                String.format("attachment; filename=appointments_report_%s.xlsx", LocalDateTime.now()));

        byte[] reportBytes = reportStream.readAllBytes();

        response.sendRedirect("/admin/home");

        return new ResponseEntity<>(reportBytes, headers, HttpStatus.OK);
    }
}

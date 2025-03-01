package by.beaty.place.service.exception.handler;

import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(DisabledException.class)
    public void handleDisabledException(DisabledException ex, HttpServletResponse response) throws IOException {
        response.sendRedirect("/login?disabled");
    }

    @ExceptionHandler(LockedException.class)
    public void handleLockedException(LockedException ex, HttpServletResponse response) throws IOException {
        response.sendRedirect("/login?blocked");
    }
}


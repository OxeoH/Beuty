package by.beaty.place.service.exception.handler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException {
        if (exception instanceof DisabledException) {
            getRedirectStrategy().sendRedirect(request, response, "/login?disabled");
        } else if (exception instanceof LockedException) {
            getRedirectStrategy().sendRedirect(request, response, "/login?blocked");
        } else {
            getRedirectStrategy().sendRedirect(request, response, "/login?error");
        }
    }
}

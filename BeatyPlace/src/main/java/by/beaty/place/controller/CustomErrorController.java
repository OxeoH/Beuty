package by.beaty.place.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            int statusCode = Integer.parseInt(status.toString());

            if (statusCode == 404) {
                model.addAttribute("statusCode", statusCode);
                model.addAttribute("errorMessage", "Ничего не найдено. Попробуйте еще раз или обратитесь в поддержку.");
                return "error/errorPage";
            } else if (statusCode == 500) {
                model.addAttribute("statusCode", statusCode);
                model.addAttribute("errorMessage", "Ошибка сервера. Попробуйте еще раз или обратитесь в поддержку.");
                return "error/errorPage";
            } else if (statusCode == 400) {
                model.addAttribute("statusCode", statusCode);
                model.addAttribute("errorMessage", "Ошибка запроса. Попробуйте еще раз или обратитесь в поддержку.");
                return "error/errorPage";
            } else if (statusCode == 401) {
                model.addAttribute("statusCode", statusCode);
                model.addAttribute("errorMessage", "Вы не авторизованы. Попробуйте еще раз или обратитесь в поддержку.");
                return "user/loginPage";
            } else if (statusCode == 403) {
                model.addAttribute("statusCode", statusCode);
                model.addAttribute("errorMessage",
                        "У вас нет прав к этому ресурсу. Попробуйте еще раз или обратитесь в поддержку.");
                return "error/errorPage";
            }
        }

        model.addAttribute("statusCode", 500);
        model.addAttribute("errorMessage", "Ошибка сервера. Попробуйте еще раз или обратитесь в поддержку.");
        return "error/errorPage";
    }
}

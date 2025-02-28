package by.beaty.place.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String showLoginPage(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "disabled", required = false) String disabled,
            @RequestParam(value = "blocked", required = false) String blocked,
            Model model) {
        if (error != null) {
            model.addAttribute("errorMessage", "Неправильные логин или пароль.");
        }
        if (disabled != null) {
            model.addAttribute("disabledMessage", "Аккаунт не активирован. Проверьте почту.");
        }
        if (blocked != null) {
            model.addAttribute("blockedMessage", "Ваш аккаунт заблокирован. Обратитесь в поддержку.");
        }
        return "user/loginPage";
    }
}

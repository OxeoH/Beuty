package by.beaty.place.controller;

import by.beaty.place.service.api.VerificationServiceApi;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/auth")
@RequiredArgsConstructor
public class VerifyController {

    private final VerificationServiceApi verificationService;

    @GetMapping("/verify")
    public String verifyAccount(@RequestParam("token") String token, Model model) {

        boolean verified = verificationService.verifyEmail(token);

        if (verified) {
            model.addAttribute("message", "Аккаунт успешно активирован! Теперь вы можете войти.");
        } else {
            model.addAttribute("message", "Ошибка: Код недействителен или истёк.");
        }

        return "user/loginPage";
    }

    @GetMapping("/reset-password")
    public String resetPassword(@RequestParam("token") String token, Model model) {

        boolean verified = verificationService.verifyResetPasswordCode(token);

        if (verified) {
            model.addAttribute("resetCode", token);
            return "user/resetPasswordPage";
        }
        model.addAttribute("tokenResetError", "Ошибка сервера, обратитесь в поддержку.");
        return "user/loginPage";
    }

    @GetMapping("/cancel-recovery")
    public String cancelRecoveryAccount(@RequestParam("token") String token) {
        verificationService.cancelRecovery(token);
        return "redirect:/";
    }
}

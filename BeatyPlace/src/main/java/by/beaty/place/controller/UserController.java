package by.beaty.place.controller;

import by.beaty.place.model.Users;
import by.beaty.place.service.api.UserServiceApi;
import by.beaty.place.service.dto.UserRequestDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
@Slf4j
public class UserController {

    private final UserServiceApi userService;

    @GetMapping("/registration")
    public String registrationPage() {
        return "user/registrationPage";
    }

    @PostMapping("/registrations")
    public String registerUser(@Valid UserRequestDto userDto, Model model) {

        Users savedUser = userService.createUser(userDto);
        if (savedUser == null) {
            model.addAttribute("registrationError", "Пользователь с таким логином или email уже зарегистрирован");
            return "user/registrationPage";
        }

        return "redirect:/login?success";
    }
}

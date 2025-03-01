package by.beaty.place.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.model.Users;
import by.beaty.place.service.api.UserServiceApi;
import by.beaty.place.service.dto.UserRequestDto;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class UserControllerTest {

    @Mock
    private UserServiceApi userService;

    @InjectMocks
    private UserController userController;

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(userController).build();
    }

    @Test
    void testRegistrationPage() throws Exception {
        mockMvc.perform(get("/user/registration"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/registrationPage"));
    }

    @Test
    void testRegisterUser_Success() throws Exception {
        UserRequestDto userDto = UserRequestDto.builder()
                .username("newUser")
                .fullName("fullname")
                .email("newUser@example.com")
                .password("password")
                .build();
        Users savedUser = Users.builder()
                .id(1L)
                .build();
        when(userService.createUser(ArgumentMatchers.any(UserRequestDto.class))).thenReturn(savedUser);

        mockMvc.perform(post("/user/registrations")
                        .flashAttr("userDto", userDto))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/login?success"));
    }

    @Test
    void testRegisterUser_Failure_DuplicateEmail() throws Exception {
        UserRequestDto userDto = UserRequestDto.builder()
                .username("existingUser")
                .fullName("fullname")
                .email("existingUser@example.com")
                .password("password")
                .build();
        when(userService.createUser(ArgumentMatchers.any(UserRequestDto.class))).thenReturn(null);

        mockMvc.perform(post("/user/registrations")
                        .flashAttr("userDto", userDto))
                .andExpect(status().isOk())
                .andExpect(view().name("user/registrationPage"))
                .andExpect(model().attribute("registrationError", "Пользователь с таким логином или email уже зарегистрирован"));
    }
}
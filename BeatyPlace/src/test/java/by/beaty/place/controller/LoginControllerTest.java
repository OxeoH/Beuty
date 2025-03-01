package by.beaty.place.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class LoginControllerTest {

    @InjectMocks
    private LoginController loginController;

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(loginController).build();
    }

    @Test
    void testShowLoginPage_WithError() throws Exception {
        // GIVEN | WHEN | THEN
        mockMvc.perform(get("/login")
                        .param("error", "true"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("errorMessage", "Неправильные логин или пароль."));
    }

    @Test
    void testShowLoginPage_WithDisabled() throws Exception {
        // GIVEN | WHEN | THEN
        mockMvc.perform(get("/login")
                        .param("disabled", "true"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("disabledMessage", "Аккаунт не активирован. Проверьте почту."));
    }

    @Test
    void testShowLoginPage_WithBlocked() throws Exception {
        // GIVEN | WHEN | THEN
        mockMvc.perform(get("/login")
                        .param("blocked", "true"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("blockedMessage",
                        "Ваш аккаунт заблокирован. Обратитесь в поддержку."));
    }

    @Test
    void testShowLoginPage_WithoutParameters() throws Exception {
        // GIVEN | WHEN | THEN
        mockMvc.perform(get("/login"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attributeDoesNotExist("errorMessage"))
                .andExpect(model().attributeDoesNotExist(
                        "disabledMessage"))
                .andExpect(model().attributeDoesNotExist(
                        "blockedMessage"));
    }
}
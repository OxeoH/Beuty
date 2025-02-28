package by.beaty.place.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.service.api.VerificationServiceApi;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class VerifyControllerTest {

    @Mock
    private VerificationServiceApi verificationService;

    @InjectMocks
    private VerifyController verifyController;

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(verifyController).build();
    }

    @Test
    void testVerifyAccount_Success() throws Exception {
        // GIVEN
        String token = "validToken";
        when(verificationService.verifyEmail(token)).thenReturn(true);

        // WHEN | THEN
        mockMvc.perform(get("/auth/verify")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("message",
                        "Аккаунт успешно активирован! Теперь вы можете войти."));
    }

    @Test
    void testVerifyAccount_Failure() throws Exception {
        // GIVEN
        String token = "invalidToken";
        when(verificationService.verifyEmail(token)).thenReturn(false);

        // WHEN | THEN
        mockMvc.perform(get("/auth/verify")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("message", "Ошибка: Код недействителен или истёк."));
    }

    @Test
    void testVerifyAccount_MissingToken() throws Exception {
        // GIVEN | WHEN | THEN
        mockMvc.perform(get("/auth/verify"))
                .andExpect(status().isBadRequest());
    }
}
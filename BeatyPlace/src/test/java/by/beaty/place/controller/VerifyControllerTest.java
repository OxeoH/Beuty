package by.beaty.place.controller;

import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
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
        String token = "validToken";
        when(verificationService.verifyEmail(token)).thenReturn(true);

        mockMvc.perform(get("/auth/verify")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("message",
                        "Аккаунт успешно активирован! Теперь вы можете войти."));
    }

    @Test
    void testVerifyAccount_Failure() throws Exception {
        String token = "invalidToken";
        when(verificationService.verifyEmail(token)).thenReturn(false);

        mockMvc.perform(get("/auth/verify")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("message", "Ошибка: Код недействителен или истёк."));
    }

    @Test
    void testVerifyAccount_MissingToken() throws Exception {
        mockMvc.perform(get("/auth/verify"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void testResetPasswordValidToken() throws Exception {
        String token = "valid-token";

        when(verificationService.verifyResetPasswordCode(token)).thenReturn(true);

        mockMvc.perform(get("/auth/reset-password")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/resetPasswordPage"))
                .andExpect(model().attribute("resetCode", token));

        verify(verificationService, times(1)).verifyResetPasswordCode(token);
    }

    @Test
    void testResetPasswordInvalidToken() throws Exception {
        String token = "invalid-token";
        when(verificationService.verifyResetPasswordCode(token)).thenReturn(false);
        mockMvc.perform(get("/auth/reset-password")
                        .param("token", token))
                .andExpect(status().isOk())
                .andExpect(view().name("user/loginPage"))
                .andExpect(model().attribute("tokenResetError", "Ошибка сервера, обратитесь в поддержку."));

        verify(verificationService, times(1)).verifyResetPasswordCode(token);
    }

    @Test
    void testCancelRecoveryAccount() throws Exception {
        String token = "valid-token";
        mockMvc.perform(get("/auth/cancel-recovery")
                        .param("token", token))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/"));

        verify(verificationService, times(1)).cancelRecovery(token);
    }
}
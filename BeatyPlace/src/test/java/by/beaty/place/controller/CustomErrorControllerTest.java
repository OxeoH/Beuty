package by.beaty.place.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import jakarta.servlet.RequestDispatcher;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class CustomErrorControllerTest {

    private MockMvc mockMvc;
    @InjectMocks
    private CustomErrorController customErrorController;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(customErrorController).build();
    }

    @Test
    void handleError_404_ShouldReturnErrorPageWithMessage() throws Exception {
        mockMvc.perform(get("/error")
                        .requestAttr(RequestDispatcher.ERROR_STATUS_CODE, 404))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 404))
                .andExpect(
                        model().attribute("errorMessage", "Ничего не найдено. Попробуйте еще раз или обратитесь в поддержку."));
    }

    @Test
    void handleError_500_ShouldReturnErrorPageWithMessage() throws Exception {
        mockMvc.perform(get("/error")
                        .requestAttr(RequestDispatcher.ERROR_STATUS_CODE, 500))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 500))
                .andExpect(model().attribute("errorMessage", "Ошибка сервера. Попробуйте еще раз или обратитесь в поддержку."));
    }

    @Test
    void handleError_400_ShouldReturnErrorPageWithMessage() throws Exception {
        mockMvc.perform(get("/error")
                        .requestAttr(RequestDispatcher.ERROR_STATUS_CODE, 400))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 400))
                .andExpect(model().attribute("errorMessage", "Ошибка запроса. Попробуйте еще раз или обратитесь в поддержку."));
    }

    @Test
    void handleError_401_ShouldReturnErrorPageWithMessage() throws Exception {
        mockMvc.perform(get("/error")
                        .requestAttr(RequestDispatcher.ERROR_STATUS_CODE, 401))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 401))
                .andExpect(
                        model().attribute("errorMessage", "Вы не авторизованы. Попробуйте еще раз или обратитесь в поддержку."));
    }

    @Test
    void handleError_403_ShouldReturnErrorPageWithMessage() throws Exception {
        mockMvc.perform(get("/error")
                        .requestAttr(RequestDispatcher.ERROR_STATUS_CODE, 403))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 403))
                .andExpect(model().attribute("errorMessage",
                        "У вас нет прав к этому ресурсу. Попробуйте еще раз или обратитесь в поддержку."));
    }

    @Test
    void handleError_Unknown_ShouldReturnDefaultErrorPage() throws Exception {
        mockMvc.perform(get("/error"))
                .andExpect(status().isOk())
                .andExpect(view().name("error/errorPage"))
                .andExpect(model().attribute("statusCode", 500))
                .andExpect(model().attribute("errorMessage", "Ошибка сервера. Попробуйте еще раз или обратитесь в поддержку."));
    }
}
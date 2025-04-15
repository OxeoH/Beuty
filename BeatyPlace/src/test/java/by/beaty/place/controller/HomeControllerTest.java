package by.beaty.place.controller;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import by.beaty.place.model.Category;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.ContactServiceApi;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@ExtendWith(MockitoExtension.class)
class HomeControllerTest {

    @InjectMocks
    private HomeController homeController;

    @Mock
    private CategoryServiceApi categoryServiceApi;
    @Mock
    private ContactServiceApi contactServiceApi;

    private MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(homeController).build();
    }

    @Test
    void homePageTest() throws Exception {
        // GIVEN
        List<Category> mockCategories = List.of(
                Category.builder()
                        .id(1L)
                        .name("Test")
                        .build(),
                Category.builder()
                        .id(2L)
                        .name("Test")
                        .build()
        );

        when(categoryServiceApi.getAll()).thenReturn(mockCategories);

        // WHEN | THEN
        mockMvc.perform(get("/"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/homePage"))
                .andExpect(model().attributeExists("categoryList"))
                .andExpect(model().attribute("categoryList", mockCategories));

        verify(categoryServiceApi, times(1)).getAll();
    }

    @Test
    void aboutUsPage_ShouldReturnAboutUsPage() throws Exception {
        mockMvc.perform(get("/about"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/aboutUsPage"));
    }

    @Test
    void servicesPage_ShouldReturnServicePage_WithCategories() throws Exception {
        // GIVEN
        List<Category> mockCategories = List.of(
                Category.builder()
                        .id(1L)
                        .name("Test")
                        .build(),
                Category.builder()
                        .id(2L)
                        .name("Test")
                        .build()
        );

        when(categoryServiceApi.getAll()).thenReturn(mockCategories);

        // WHEN | THEN
        mockMvc.perform(get("/services"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/servicePage"))
                .andExpect(model().attribute("categoryList", mockCategories));
    }

    @Test
    void contactUsPage_ShouldReturnContactUsPage() throws Exception {
        mockMvc.perform(get("/contactus"))
                .andExpect(status().isOk())
                .andExpect(view().name("user/contactUsPage"));
    }

    @Test
    void testContactUsCreate() throws Exception {
        mockMvc.perform(post("/contactus")
                        .param("firstname", "John")
                        .param("lastname", "Doe")
                        .param("email", "john.doe@example.com")
                        .param("message", "Hello!")
                        .param("subject", "Test Subject"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/contactus"));
    }
}
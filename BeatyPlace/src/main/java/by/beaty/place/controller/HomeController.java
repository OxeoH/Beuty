package by.beaty.place.controller;

import by.beaty.place.model.Category;
import by.beaty.place.service.api.CategoryServiceApi;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final CategoryServiceApi categoryServiceApi;

    @GetMapping("/")
    public String home(Model model) {
        List<Category> categoryList = categoryServiceApi.getAll();
        model.addAttribute("categoryList", categoryList);
        return "homePage";
    }

    @GetMapping("/about")
    public String aboutUsPage(){
        return "aboutUsPage";
    }

    @GetMapping("/services")
    public String servicesPage(Model model){
        List<Category> categoryList = categoryServiceApi.getAll();
        model.addAttribute("categoryList", categoryList);
        return "servicePage";
    }

    @GetMapping("/contactus")
    public String contactUsPage(){
        return "contactUsPage";
    }
    
}

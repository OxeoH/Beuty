package by.beaty.place.controller;

import by.beaty.place.model.Category;
import by.beaty.place.model.Contact;
import by.beaty.place.service.api.CategoryServiceApi;
import by.beaty.place.service.api.ContactServiceApi;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final CategoryServiceApi categoryServiceApi;
    private final ContactServiceApi contactServiceApi;

    @GetMapping("/")
    public String home(Model model) {
        List<Category> categoryList = categoryServiceApi.getAll();
        model.addAttribute("categoryList", categoryList);
        return "homePage";
    }

    @GetMapping("/about")
    public String aboutUsPage() {
        return "aboutUsPage";
    }

    @GetMapping("/services")
    public String servicesPage(Model model) {
        List<Category> categoryList = categoryServiceApi.getAll();
        model.addAttribute("categoryList", categoryList);
        return "servicePage";
    }

    @GetMapping("/contactus")
    public String contactUsPage() {
        return "contactUsPage";
    }

    @PostMapping("/contactus")
    public String contactUsCreate(@RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("email") String email,
            @RequestParam("message") String message,
            @RequestParam("subject") String subject) {
        Contact contact = Contact.builder()
                .firstname(firstname)
                .lastname(lastname)
                .email(email)
                .subject(subject)
                .message(message)
                .build();
        contactServiceApi.saveContact(contact);
        return "redirect:/contactus";
    }

    @GetMapping("/politics")
    public String politicsPage(){
        return "politicsPage";
    }
}

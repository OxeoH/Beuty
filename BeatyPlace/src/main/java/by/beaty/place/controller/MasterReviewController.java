package by.beaty.place.controller;

import by.beaty.place.service.api.ReviewMasterServiceApi;
import by.beaty.place.service.dto.ReviewMasterDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class MasterReviewController {

    private final ReviewMasterServiceApi reviewMasterService;

    @PostMapping("/create/review/{appointmentId}")
    public String createReviewMaster(@PathVariable("appointmentId") Long appointmentId, @RequestParam("rating") Integer rating,
            @RequestParam("comment") String comment) {
        ReviewMasterDto reviewMasterDto = ReviewMasterDto.builder()
                .appointmentId(appointmentId)
                .rating(rating)
                .comment(comment)
                .build();
        reviewMasterService.createReviewMaster(reviewMasterDto);
        return String.format("redirect:/appointment/%s", appointmentId);
    }
}

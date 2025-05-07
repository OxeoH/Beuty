package by.beaty.place.service.api;

import by.beaty.place.service.dto.ReviewMasterDto;
import java.util.List;

public interface ReviewMasterServiceApi {

    void createReviewMaster(ReviewMasterDto reviewMasterDto);

    List<ReviewMasterDto> getAllMyMaster(Long masterId);
}

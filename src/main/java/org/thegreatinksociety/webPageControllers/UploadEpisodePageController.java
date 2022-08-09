package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalFunction;

@Controller
public class UploadEpisodePageController {
    @RequestMapping("/uploadEpisode")
    public String getUploadEpisodePage(Model model){

        GlobalFunction.firebaseConfig(model);
        return "/uploadEpisode";
    }

}

package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PodcastDetailsUserPageController {

    @RequestMapping("/podcastDetailsUser")
    public String getPodcastDetailsUserPage(){
        return "/podcastDetailsUser";
    }
}

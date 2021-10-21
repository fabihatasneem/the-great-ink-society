package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PodcastCreatePageController {

    @RequestMapping("/podcastCreate")
    public String getPodcastCreatePage() {
        return "podcastCreate";
    }
}

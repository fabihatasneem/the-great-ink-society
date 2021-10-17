package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PodcastIndexPageController {

    @RequestMapping("/podcastIndex")
    public String getPodcastIndex() {
        return "podcastIndex";
    }
}

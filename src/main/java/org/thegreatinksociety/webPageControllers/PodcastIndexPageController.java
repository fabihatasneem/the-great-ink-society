package org.thegreatinksociety.webPageControllers;

import org.apache.tomcat.jni.Global;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalVariable;

@Controller
public class PodcastIndexPageController {

    @RequestMapping("/podcastIndex")
    public String getPodcastIndex(Model model) {
        model.addAttribute("coverLink", GlobalVariable.PODCAST_BACKGROUND_LINK);
        return "podcastIndex";
    }
}

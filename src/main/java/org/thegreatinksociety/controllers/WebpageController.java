package org.thegreatinksociety.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebpageController {

    @RequestMapping("/")
    public String getIndex() {
        return "index";
    }

    @RequestMapping("/podcast")
    public String getPodcastIndex() {
        return "podcastIndex";
    }

    @RequestMapping("/writing")
    public String getWritingIndex() {
        return "writingIndex";
    }

    @RequestMapping("/events")
    public String getEventsPage() {
        return "events";
    }

    @RequestMapping("/genre")
    public String getGenrePage(){
        return "genre";
    }

    @RequestMapping("/myProfile")
    public String getMyProfilePage() {
        return "myProfile";
    }

    @RequestMapping("/userProfile")
    public String getUserProfilePage() {
        return "userProfile";
    }

    @RequestMapping("/bookCreate")
    public String getBookCreatePage() {
        return "bookCreate";
    }

    @RequestMapping("/bookSubmit")
    public String submitBook() {
        return "write";
    }

    @RequestMapping("/reading")
    public String getReadingPage() {
        return "reading";
    }

    @RequestMapping("/podcastCreate")
    public String getPodcastCreatePage() {
        return "podcastCreate";
    }

    @RequestMapping("/podcastSubmit")
    public String submitPodcast() {
        return "upload";
    }

    @RequestMapping("/listening")
    public String getListeningPage() {
        return "listening";
    }
}

package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalFunction;

import javax.servlet.http.HttpSession;

@Controller
public class PodcastCreatePageController {

    @RequestMapping("/podcastCreate")
    public String getPodcastCreatePage(HttpSession session, Model model) {
        model.addAttribute("username", session.getAttribute("username"));

        GlobalFunction.firebaseConfig(model);
        return "podcastCreate";
    }
}

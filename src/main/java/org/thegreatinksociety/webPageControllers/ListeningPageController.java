package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListeningPageController {

    @RequestMapping("/listening")
    public String getListeningPage() {
        return "listening";
    }
}

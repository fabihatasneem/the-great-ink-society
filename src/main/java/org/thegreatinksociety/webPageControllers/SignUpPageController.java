package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpPageController {
    @RequestMapping(value = "/signup")
    public String signup(){
        return "/signup";
    }
}

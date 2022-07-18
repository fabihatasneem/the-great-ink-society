package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignInPageController {

    @RequestMapping("/signIn")
    public String getSignInPage(){
        return "signin";
    }
}

package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserProfilePageController {

    @RequestMapping("/userProfile")
    public String getUserProfilePage() {
        return "userProfile";
    }

}

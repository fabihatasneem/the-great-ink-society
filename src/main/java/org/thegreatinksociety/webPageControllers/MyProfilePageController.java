package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyProfilePageController {

    @RequestMapping("/myProfile")
    public String getMyProfilePage() {
        return "myProfile";
    }
}

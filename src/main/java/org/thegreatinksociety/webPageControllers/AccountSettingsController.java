package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountSettingsController {

    @RequestMapping("/accountSettings")
    public String getAccountSettingsPage() {
        return "accountSettings";
    }
}

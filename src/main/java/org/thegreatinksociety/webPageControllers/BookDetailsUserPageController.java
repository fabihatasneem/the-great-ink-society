package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookDetailsUserPageController {

    @RequestMapping("/bookDetailsUser")
    public String getBookDetailsUserPage() {
        return "/bookDetailsUser";
    }
}

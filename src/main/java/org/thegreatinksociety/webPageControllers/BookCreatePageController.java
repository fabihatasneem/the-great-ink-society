package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookCreatePageController {

    @RequestMapping("/bookCreate")
    public String getBookCreatePage() {
        return "bookCreate";
    }
}

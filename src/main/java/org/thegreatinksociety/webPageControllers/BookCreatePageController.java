package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class BookCreatePageController {

    @RequestMapping("/bookCreate")
    public String getBookCreatePage(HttpSession session, Model model) {
        model.addAttribute("username", session.getAttribute("username"));
        return "bookCreate";
    }
}

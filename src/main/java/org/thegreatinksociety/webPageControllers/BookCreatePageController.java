package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalFunction;
import org.thegreatinksociety.global.GlobalVariable;

import javax.servlet.http.HttpSession;

@Controller
public class BookCreatePageController {

    @RequestMapping("/bookCreate")
    public String getBookCreatePage(HttpSession session, Model model) {
        model.addAttribute("username", session.getAttribute("username"));

        GlobalFunction.firebaseConfig(model);

        return "bookCreate";
    }
}

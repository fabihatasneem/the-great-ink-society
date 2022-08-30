package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalFunction;
import org.thegreatinksociety.global.GlobalVariable;

import javax.servlet.http.HttpSession;

@Controller
public class AdminLoginPageController {

    @RequestMapping("/admin/login")
    public String getAdminLoginPage(HttpSession session, Model model) {

        return "/admin/adminLogin";
    }
}

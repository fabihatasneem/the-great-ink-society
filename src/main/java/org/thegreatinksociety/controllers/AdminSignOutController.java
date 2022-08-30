package org.thegreatinksociety.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AdminSignOutController {

    @RequestMapping("/adminSignOut")
    public String signOut(HttpSession session){

        session.invalidate();
        return "/admin/login";
    }
}

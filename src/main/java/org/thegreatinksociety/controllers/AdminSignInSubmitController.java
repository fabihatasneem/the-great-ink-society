package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Admins;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.AdminsRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class AdminSignInSubmitController {

    @Autowired
    private AdminsRepository adminsRepository;

    @RequestMapping(value = "/adminSignInSubmit", method = RequestMethod.POST)
    public void adminSignInSubmit(@RequestParam String username, @RequestParam String password,
                                  HttpServletResponse response, HttpSession session,
                                  HttpServletRequest request) throws IOException {
        Admins admin = adminsRepository.findByAdminUserNameAndPassword(username, password);

        if (admin != null) {
            session.setAttribute("adminUsername", admin.getAdminUserName());
            session.setAttribute("adminEmail", admin.getEmail());
            session.setAttribute("adminPassword", admin.getPassword());
            session.setAttribute("adminId", admin.getId());

            response.sendRedirect(GlobalVariable.localUrl + "/admin/dashBoard");
        } else {
            response.sendRedirect(GlobalVariable.localUrl + "/admin/login");
        }
    }
}

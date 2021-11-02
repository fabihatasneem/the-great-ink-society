package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserProfileUpdateController {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/userProfileUpdate")
    public void userProfileUpdate(HttpServletResponse response, HttpSession session,
                                  @RequestParam String fullName, @RequestParam String email,
                                  @RequestParam String phone, @RequestParam String location, @RequestParam String bio) throws IOException {
        Users user = usersRepository.findByUserName(session.getAttribute("username").toString());

        if(fullName != null) {
            user.setFullName(fullName);
        }
        if(email != null) {
            user.setEmail(email);
        }
        if(phone != null) {
            user.setMobile(phone);
        }
        if(location != null) {
            user.setLocation(location);
        }
        if(bio != null) {
            user.setBio(bio);
        }

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl + "/myProfile");
    }
}

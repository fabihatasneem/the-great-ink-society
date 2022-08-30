package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserProfilePictureUpdate {
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/userProfilePictureUpdate")
    public void userProfilePictureUpdate(HttpServletRequest request, HttpServletResponse response,
                                         HttpSession session, @RequestParam String profilePicName) throws ServletException, IOException {
        Users user = usersRepository.findByUserName(session.getAttribute("username").toString());

        String gender = user.getGender();

        user.setProfilePicName(profilePicName);
        user.setProfilePicLink(profilePicName);

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl + "/myProfile");

    }
}

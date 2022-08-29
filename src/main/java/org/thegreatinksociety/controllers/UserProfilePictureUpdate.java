package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;
import org.thegreatinksociety.util.FileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Collection;

@Controller
public class UserProfilePictureUpdate {
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/userProfilePictureUpdate")
    public void userProfilePictureUpdate(HttpServletRequest request, HttpServletResponse response,
                                         HttpSession session, @RequestParam String profilePictureUpload) throws ServletException, IOException {
        Users user = usersRepository.findByUserName(session.getAttribute("username").toString());

        String fileName;
        String gender = user.getGender();

        if (profilePictureUpload.equals("")) {
            if(gender.equalsIgnoreCase("Male")) {
                fileName = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Fmale_dp.jpg?alt=media&token=8a0f2989-5cd9-409b-887c-a1c4aded8b42";
            } else {
                fileName = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Ffemale_dp.jpg?alt=media&token=ce14b4cf-1ee4-48ad-811c-32f6437e8e0f";
            }
        } else {
            fileName = profilePictureUpload;
        }

        user.setProfilePicName(fileName);
        user.setProfilePicLink(fileName);

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl + "/myProfile");

    }
}

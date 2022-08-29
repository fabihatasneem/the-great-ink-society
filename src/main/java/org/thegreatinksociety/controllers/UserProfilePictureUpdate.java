package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    public void userProfilePictureUpdate(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
        Users user = usersRepository.findByUserName(session.getAttribute("username").toString());

        Collection<Part> parts;
        String fileName = null;
        String path = GlobalVariable.imageUploadPath;

        parts = request.getParts();
        if (parts != null && parts.size() > 0) {
            Part filePart_recordFile = request.getPart("profilePictureUpload");
            fileName = FileUpload.upload(filePart_recordFile, path);
        }

        String gender = user.getGender();

        if (fileName == null) {
            if(gender.equalsIgnoreCase("Male")) {
                fileName = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Fmale_dp.jpg?alt=media&token=8a0f2989-5cd9-409b-887c-a1c4aded8b42";
            } else if(gender.equalsIgnoreCase("Female")) {
                fileName = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Ffemale_dp.jpg?alt=media&token=ce14b4cf-1ee4-48ad-811c-32f6437e8e0f";
            }
        }

        user.setProfilePicName(fileName);
        user.setProfilePicLink(fileName);

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl + "/myProfile");

    }
}

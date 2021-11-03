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

        if (fileName == null) {
            fileName = "img/blog/user-info.png";
        }

        user.setProfilePicName(fileName);
        user.setProfilePicLink(path + fileName);

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl + "/myProfile");

    }
}

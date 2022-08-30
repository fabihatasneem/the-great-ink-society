package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class VerificationCodeSubmit {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/verificationCodeSubmit", method = RequestMethod.POST)
    public void verificationCodeSubmit(@RequestParam String verificationCode, HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException {

        if (session.getAttribute("userId") == null) {
            response.sendRedirect(GlobalVariable.localUrl + "/signIn");
        } else {
            Users user = usersRepository.findUsersById(Long.parseLong(session.getAttribute("userId").toString()));
            if (user.getEmailVerificationCode().equals(verificationCode)) {
                user.setEmailVerified(1);
                usersRepository.save(user);
                response.sendRedirect(GlobalVariable.localUrl + "/myProfile");
            }
        }
    }
}

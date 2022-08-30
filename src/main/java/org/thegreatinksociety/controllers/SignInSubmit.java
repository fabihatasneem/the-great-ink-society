package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
public class SignInSubmit {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/signInSubmit", method = RequestMethod.POST)
    public void loginSubmit(@RequestParam String username, @RequestParam String password, HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        Users users = usersRepository.findByUserNameAndStatus(username, 1);

        if (users == null) {
            //Username not found
            response.sendRedirect(GlobalVariable.localUrl + "/signIn");
        } else {
            String encodedPassword = users.getPassword();
            if(passwordEncoder.matches(password, encodedPassword)) {
                //Matched
                session = request.getSession();

                session.setAttribute("username", username);
                session.setAttribute("password", password);
                session.setAttribute("userId", users.getId());

                response.sendRedirect(GlobalVariable.localUrl + "/myProfile");
            } else {
                //Password incorrect
                response.sendRedirect(GlobalVariable.localUrl + "/signIn");
            }
        }
    }
}

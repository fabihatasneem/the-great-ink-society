package org.thegreatinksociety.controllers;

import net.bytebuddy.utility.RandomString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@Controller
public class SignUpSubmitController {
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/signUpSubmit", method = RequestMethod.POST)
    public void signupSubmit(@RequestParam String name, @RequestParam String email, @RequestParam String username,@RequestParam String gender, @RequestParam String pass, HttpServletResponse response) throws IOException {
        String randomCode = RandomString.make(64);

        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(pass);

        Users user = new Users();
        user.setFullName(name);
        user.setEmail(email);
        user.setUserName(username);
        user.setGender(gender);
        user.setPassword(encodedPassword);
        user.setStatus(1);
        Date today = new Date();
        user.setJoinedDate(today);
        user.setEmailVerificationCode(randomCode);

        if (gender.equals("Male")) {
            user.setProfilePicLink(GlobalVariable.MALE_DP_LINK);
        } else if (gender == "Female") {
            user.setProfilePicLink(GlobalVariable.FEMALE_DP_LINK);
        }

        usersRepository.save(user);

        response.sendRedirect(GlobalVariable.localUrl);
    }
}

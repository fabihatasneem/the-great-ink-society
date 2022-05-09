package org.thegreatinksociety.webPageControllers;

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
public class GetProfile {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/getProfile")
    public void getProfile(@RequestParam Long id, HttpSession session, HttpServletResponse response) throws IOException {
        if (id == Long.parseLong(session.getAttribute("userId").toString())) {
            response.sendRedirect(GlobalVariable.localUrl + "/myProfile");
        } else {
            Users user = usersRepository.findUsersById(id);
            response.sendRedirect(GlobalVariable.localUrl + "/userProfile?username=" + user.getUserName());
        }
    }
}

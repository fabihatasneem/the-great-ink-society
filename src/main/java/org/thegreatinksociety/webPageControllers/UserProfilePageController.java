package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.UsersRepository;

@Controller
public class UserProfilePageController {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/userProfile")
    public String getUserProfilePage(@RequestParam String username) {

        Users user = usersRepository.findByUserName(username);
        return "userProfile";
    }

}

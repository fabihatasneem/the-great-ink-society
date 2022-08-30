package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.UsersRepository;

@RestController
public class BanUser {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/banUser", method = RequestMethod.POST)
    public Users banUser(@RequestParam Long userId){
        Users user = usersRepository.findUsersById(userId);
        user.setStatus(0);

        Users updatedUser = usersRepository.save(user);
        return updatedUser;
    }
}

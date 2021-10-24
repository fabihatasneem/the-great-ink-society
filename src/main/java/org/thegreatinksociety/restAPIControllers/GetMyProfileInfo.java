package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.UsersRepository;

@RestController
public class GetMyProfileInfo {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMyProfileInfo", method = RequestMethod.POST)
    public Users getMyProfileInfo(@RequestParam String username){
        Users users = usersRepository.findByUserName(username);

        return users;
    }
}

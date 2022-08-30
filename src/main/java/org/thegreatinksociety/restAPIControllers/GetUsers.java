package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.List;

@RestController
public class GetUsers {

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(method = RequestMethod.GET, value = "/getUsers")
    public List<Users> getGenre(){
        return usersRepository.findAll();
    }
}

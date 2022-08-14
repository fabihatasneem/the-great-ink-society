package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.FollowersAndFollowings;
import org.thegreatinksociety.entities.Subscribers;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.FollowersAndFollowingsRepository;
import org.thegreatinksociety.repositories.SubscribersRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GetMySubscribersInfo {

    @Autowired
    private SubscribersRepository subscribersRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMySubscribersInfo", method = RequestMethod.POST)
    public List<Users> getMySubscribersInfo(@RequestParam Long userId){
        List<Subscribers> subscriberIdList = subscribersRepository.findBySubscribedToId(userId);

        List<Users> subscriberList = new ArrayList<>();
        for(Subscribers i : subscriberIdList){
            System.out.println("Hello");
            subscriberList.add(usersRepository.findUsersById(i.getSubscriberId()));
        }
        return subscriberList;
    }
}

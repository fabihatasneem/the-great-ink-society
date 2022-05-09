package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Subscribers;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.SubscribersRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GetMySubscriptionInfo {

    @Autowired
    private SubscribersRepository subscribersRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMySubscriptionInfo", method = RequestMethod.POST)
    public List<Users> getMySubscriptionInfo(@RequestParam Long userId){
        List<Subscribers> subscribedIdList = subscribersRepository.findBySubscriberId(userId);

        List<Users> subscribedToList = new ArrayList<>();
        for(Subscribers i : subscribedIdList){
            subscribedToList.add(usersRepository.findUsersById(i.getSubscribedToId()));
        }
        return subscribedToList;
    }
}

package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.FollowersAndFollowings;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.FollowersAndFollowingsRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GetMyFollowingsInfo {

    @Autowired
    private FollowersAndFollowingsRepository followersAndFollowingsRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMyFollowingsInfo", method = RequestMethod.POST)
    public List<Users> getMyFollowingsInfo(@RequestParam Long userId){
        List<FollowersAndFollowings> followingIdList = followersAndFollowingsRepository.findByFollowerId(userId);
        List<Users> followingList = new ArrayList<>();
        for(FollowersAndFollowings i : followingIdList){
            followingList.add(usersRepository.findUsersById(i.getFollowingId()));
        }
        return followingList;
    }
}

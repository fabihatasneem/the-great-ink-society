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
public class GetMyFollowersInfo {
    @Autowired
    private FollowersAndFollowingsRepository followersAndFollowingsRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMyFollowersInfo", method = RequestMethod.POST)
    public List<Users> getMyFollowersInfo(@RequestParam Long userId){
        System.out.println(userId);
        List<FollowersAndFollowings> followerIdList = followersAndFollowingsRepository.findByFollowingId(userId);

        List<Users> followerList = new ArrayList<>();
        for(FollowersAndFollowings i : followerIdList){
            followerList.add(usersRepository.findUsersById(i.getFollowerId()));
        }
        return followerList;
    }
}

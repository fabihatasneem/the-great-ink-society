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

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class FollowUnfollowUser {
    @Autowired
    private FollowersAndFollowingsRepository followersAndFollowingsRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/followUnfollowUser", method = RequestMethod.POST)
    public FollowersAndFollowings followUnfollowUser(@RequestParam Long followerId, @RequestParam Long followingId){
        Users follower = usersRepository.findUsersById(followerId);
        Users following = usersRepository.findUsersById(followingId);

        FollowersAndFollowings follow = followersAndFollowingsRepository.findByFollowerIdAndFollowingId(followerId, followingId);
        if(follow != null) {
            if (follow.getStatus() == 1) {
                //unfollow
                follow.setStatus(0);
                follower.setFollowings(follower.getFollowings() - 1);
                following.setFollowers(following.getFollowers() - 1);
            } else {
                //follow
                follow.setStatus(1);
                follower.setFollowings(follower.getFollowings() + 1);
                following.setFollowers(following.getFollowers() + 1);
            }
        } else {
            follow = new FollowersAndFollowings();
            follow.setStatus(1);
            follow.setFollowerId(followerId);
            follow.setFollowingId(followingId);
            follow.setDateFollowed(new Date());
        }
        followersAndFollowingsRepository.save(follow);
        return follow;
    }
}

package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.FollowersAndFollowings;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.FollowersAndFollowingsRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GetMyFollowingsPodcasts {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;
    @Autowired
    private FollowersAndFollowingsRepository followersAndFollowingsRepository;
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMyFollowingsPodcasts", method = RequestMethod.POST)
    public List<PodcastSeries> getMyFollowingsPodcasts(@RequestParam Long userId){
         int publishStatus = 1;

        List<PodcastSeries> podcastList = new ArrayList<>();
        List<FollowersAndFollowings> followingIdList = followersAndFollowingsRepository.findByFollowerId(userId);
        List<Users> followingUserList = new ArrayList<>();
        for(FollowersAndFollowings i : followingIdList){
            followingUserList.add(usersRepository.findUsersById(i.getFollowingId()));
        }
        for(Users u : followingUserList){
            List<PodcastSeries> podcasts = podcastSeriesRepository.findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(u.getId(), publishStatus);
            podcastList.addAll(podcasts);
        }
        return podcastList;
    }

}

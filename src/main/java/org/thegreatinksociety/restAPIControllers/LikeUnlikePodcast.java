package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.repositories.*;

@RestController
public class LikeUnlikePodcast {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;
    @Autowired
    private PodcastLikesRepository podcastLikesRepository;

    @RequestMapping(value = "/likeUnlikePodcast", method = RequestMethod.POST)
    public PodcastLikes likeUnlikePodcast(@RequestParam Long userId, @RequestParam Long podcastId) {
        Users user = usersRepository.findUsersById(userId);
        PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);
        PodcastLikes like = podcastLikesRepository.findByUserAndPodcastSeries(user, podcast);
        int likeCount = podcast.getNumberOfLikes();
        System.out.println(likeCount);
        if(like == null) {
            like = new PodcastLikes();
            like.setUser(user);
            like.setPodcastSeries(podcast);
            like.setStatus(1);
            likeCount++;
        } else{
            if(like.getStatus() == 0){
                like.setStatus(1);
                likeCount++;
            } else {
                like.setStatus(0);
                likeCount--;
            }
        }
        podcast.setNumberOfLikes(likeCount);
        podcastLikesRepository.save(like);
        return like;
    }
}

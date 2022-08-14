package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.CommentsOfBooks;
import org.thegreatinksociety.entities.CommentsOfPodcast;
import org.thegreatinksociety.repositories.CommentsOfPodcastsRepository;

import java.util.List;

@RestController
public class GetCommentsOfEpisode {
    @Autowired
    private CommentsOfPodcastsRepository commentsOfPodcastsRepository;

    @RequestMapping(value = "/getCommentsOfEpisode", method = RequestMethod.POST)
    public List<CommentsOfPodcast> getCommentsOfPodcasts(@RequestParam Long episodeId, @RequestParam Long podcastId) {

        return commentsOfPodcastsRepository.findByEpisode_IdAndPodcastSeries_Id(episodeId, podcastId);
    }
}

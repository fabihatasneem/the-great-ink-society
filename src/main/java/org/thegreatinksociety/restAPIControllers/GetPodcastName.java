package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

@RestController
public class GetPodcastName {
    @Autowired
    PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping("/getPodcastName")
    public String getPodcastName(@RequestParam long podcastId){
        PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);
        return podcast.getSeriesName();
    }
}

package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

@RestController
public class GetSinglePodcastDetails {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping("/getSinglePodcastDetails")
    public PodcastSeries getSingleBookDetails(@RequestParam Long podcastId){
        return podcastSeriesRepository.findPodcastSeriesById(podcastId);
    }
}

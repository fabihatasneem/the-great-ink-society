package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import java.util.List;

@RestController
public class GetMyPodcastInfo {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/getMyPodcastsInfo", method = RequestMethod.POST)
    public List<PodcastSeries> getMyPodcastsInfo(@RequestParam String username) {
        return podcastSeriesRepository.findByUser_UserName(username);
    }
}

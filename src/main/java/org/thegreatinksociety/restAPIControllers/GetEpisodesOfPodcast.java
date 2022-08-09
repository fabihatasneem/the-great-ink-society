package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.Episodes;
import org.thegreatinksociety.repositories.ChaptersRepository;
import org.thegreatinksociety.repositories.EpisodesRepository;

import java.util.List;

@RestController
public class GetEpisodesOfPodcast {

    @Autowired
    private EpisodesRepository episodesRepository;

    @RequestMapping(value = "/getEpisodesOfPodcast", method = RequestMethod.POST)
    public List<Episodes> getEpisodesOfPodcast(@RequestParam Long podcastId){

        return episodesRepository.findByPodcastSeries_Id(podcastId);
    }

}

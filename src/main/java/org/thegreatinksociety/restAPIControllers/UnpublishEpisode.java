package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.Episodes;
import org.thegreatinksociety.repositories.EpisodesRepository;

import javax.servlet.http.HttpServletResponse;

@RestController
public class UnpublishEpisode {

    @Autowired
    private EpisodesRepository episodesRepository;

    @RequestMapping(value = "/unpublishEpisode", method = RequestMethod.POST)
    public boolean unpublishChapter(@RequestParam Long episodeId, HttpServletResponse response){
        Episodes episode = episodesRepository.findEpisodesById(episodeId);

        episode.setStatus(0);
        episode.getPodcastSeries().setCompletionStatus(0);
        int previousEpisodes = episode.getPodcastSeries().getNumberOfEpisodes();
        episode.getPodcastSeries().setNumberOfEpisodes(previousEpisodes-1);

        Episodes draftedEpisode = episodesRepository.save(episode);

        return draftedEpisode.getStatus() == 0;
    }
}

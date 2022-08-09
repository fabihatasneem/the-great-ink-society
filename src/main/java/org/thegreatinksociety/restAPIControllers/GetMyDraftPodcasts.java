package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import java.util.List;

@RestController
public class GetMyDraftPodcasts {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/getMyDraftPodcasts", method = RequestMethod.POST)
    public List<PodcastSeries> getMyDraftPodcasts(@RequestParam Long userId){

        Pageable limitedData = PageRequest.of(0, 4, Sort.by("creationDate").descending());
        int publishStatus = 0;

        return podcastSeriesRepository.findByUser_IdAndPublishStatusOrderByCreationDateDesc(userId, limitedData, publishStatus);
    }
}

package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import java.util.List;

@RestController
public class GetSameUploaderPodcasts {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/getSameUploaderPodcasts", method = RequestMethod.POST)
    public List<PodcastSeries> getSameUploaderPodcasts(@RequestParam Long userId) {
        Pageable limitedData = PageRequest.of(0, 4, Sort.by("numberOfLikes").descending());
        int publishStatus = 1;

        return podcastSeriesRepository.findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(userId, limitedData, publishStatus);
    }
}

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
public class GetSameGenrePodcasts {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/getSameGenrePodcasts", method = RequestMethod.POST)
    public List<PodcastSeries> getSameGenrePodcasts(@RequestParam Long genreId) {
        Pageable limitedData = PageRequest.of(0, 4, Sort.by("numberOfLikes").descending());
        int publishStatus = 1;

        return podcastSeriesRepository.findByGenre_IdAndPublishStatusOrderByNumberOfLikesDesc(genreId, limitedData, publishStatus);
    }
}

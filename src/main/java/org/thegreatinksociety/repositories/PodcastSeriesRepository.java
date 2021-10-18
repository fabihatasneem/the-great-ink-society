package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.PodcastSeries;

public interface PodcastSeriesRepository extends CrudRepository<PodcastSeries, Long> {
    PodcastSeries findPodcastSeriesById(Long podcastId);
}

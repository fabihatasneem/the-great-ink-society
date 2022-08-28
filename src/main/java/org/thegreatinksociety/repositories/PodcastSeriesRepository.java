package org.thegreatinksociety.repositories;

import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastSeries;

import java.util.List;

public interface PodcastSeriesRepository extends CrudRepository<PodcastSeries, Long> {
    List<PodcastSeries> findByUser_FullNameContainsIgnoreCase(String fullName);

    List<PodcastSeries> findBySeriesNameContainsIgnoreCase(String seriesName);

    PodcastSeries findPodcastSeriesById(Long podcastId);

    List<PodcastSeries> findByUser_UserName(String userName);

    List<PodcastSeries> findByUser_IdAndPublishStatusOrderByCreationDateDesc(Long userId, Pageable limitedData, int publishStatus);

    List<PodcastSeries> findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(Long userId, Pageable limitedData, int publishStatus);

    List<PodcastSeries> findByPublishStatusOrderByNumberOfLikesDesc(Pageable pageable, int publishStatus);

    List<PodcastSeries> findByPublishStatusOrderByCreationDateDesc(Pageable pageable, int publishStatus);

    List<PodcastSeries> findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(Long userId, int publishStatus);

    List<PodcastSeries> findByGenre_IdAndPublishStatusOrderByNumberOfLikesDesc(Long genreId, Pageable limitedData, int publishStatus);
}

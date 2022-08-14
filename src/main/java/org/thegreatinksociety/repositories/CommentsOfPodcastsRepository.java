package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.CommentsOfPodcast;

import java.util.List;

public interface CommentsOfPodcastsRepository extends CrudRepository<CommentsOfPodcast, Long> {
    List<CommentsOfPodcast> findByEpisode_IdAndPodcastSeries_Id(Long id, Long id1);
}

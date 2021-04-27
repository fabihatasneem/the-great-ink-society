package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.CommentsOfPodcast;

public interface CommentsOfPodcastsRepository extends CrudRepository<CommentsOfPodcast, Long> {
}

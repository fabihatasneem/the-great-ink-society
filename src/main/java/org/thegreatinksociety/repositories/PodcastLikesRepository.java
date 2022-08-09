package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastLikes;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.entities.Users;

public interface PodcastLikesRepository extends CrudRepository<PodcastLikes, Long> {
    PodcastLikes findByUserAndPodcastSeries(Users user, PodcastSeries podcastSeries);
}

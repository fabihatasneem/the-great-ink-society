package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Awards;

import java.util.List;

public interface AwardsRepository extends CrudRepository<Awards, Long> {
    List<Awards> findByWinnerBookId(Long winnerBookId);

    List<Awards> findByWinnerPodcastId(Long winnerPodcastId);



    List<Awards> findAwardByWinnerBookId (Long winnerBookId);


}

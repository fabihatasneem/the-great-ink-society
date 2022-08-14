package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.EpisodeLikeHistory;

public interface EpisodeLikeHistoryRepository extends CrudRepository<EpisodeLikeHistory, Long> {
    EpisodeLikeHistory findByUser_IdAndEpisodes_Id(Long id, Long id1);
}

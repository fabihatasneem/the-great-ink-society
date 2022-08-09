package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Episodes;

import java.util.List;
import java.util.Optional;

public interface EpisodesRepository extends CrudRepository<Episodes, Long> {
    List<Episodes> findByPodcastSeries_Id(Long id);

    Episodes findEpisodesById(Long aLong);
}

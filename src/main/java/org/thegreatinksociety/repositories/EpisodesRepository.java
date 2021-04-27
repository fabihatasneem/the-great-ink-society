package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Episodes;

public interface EpisodesRepository extends CrudRepository<Episodes, Long> {
}

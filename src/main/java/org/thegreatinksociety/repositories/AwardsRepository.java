package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Awards;

public interface AwardsRepository extends CrudRepository<Awards, Long> {
}

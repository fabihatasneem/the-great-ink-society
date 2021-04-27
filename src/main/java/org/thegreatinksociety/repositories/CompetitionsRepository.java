package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Competitions;

public interface CompetitionsRepository extends CrudRepository<Competitions, Long> {

}

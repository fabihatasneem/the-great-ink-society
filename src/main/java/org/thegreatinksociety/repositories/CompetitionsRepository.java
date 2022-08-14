package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Competitions;

import java.util.Date;
import java.util.List;

public interface CompetitionsRepository extends CrudRepository<Competitions, Long> {
    List<Competitions> findCompetitionsByResultDateBefore(Date date);
}

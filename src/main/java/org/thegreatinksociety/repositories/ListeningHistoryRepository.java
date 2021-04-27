package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.ListeningHistory;

public interface ListeningHistoryRepository extends CrudRepository<ListeningHistory, Long> {
}

package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.ReadingHistory;

public interface ReadingHistoryRepository extends CrudRepository<ReadingHistory, Long> {
}

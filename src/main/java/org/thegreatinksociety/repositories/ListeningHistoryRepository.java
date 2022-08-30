package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.ListeningHistory;
import org.thegreatinksociety.entities.ReadingHistory;

public interface ListeningHistoryRepository extends CrudRepository<ListeningHistory, Long> {
    ListeningHistory findFirstByUser_IdOrderByLastListeningTimeTimeDesc(Long id);
}

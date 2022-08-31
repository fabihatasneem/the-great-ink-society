package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.ReadingHistory;
import org.thegreatinksociety.entities.Users;

public interface ReadingHistoryRepository extends CrudRepository<ReadingHistory, Long> {
//    ReadingHistory findFirstByUser_IdOrderByLastReadingTimeDesc(Long id);

    ReadingHistory findFirstByUserOrderByLastReadingTimeDesc(Users user);


}

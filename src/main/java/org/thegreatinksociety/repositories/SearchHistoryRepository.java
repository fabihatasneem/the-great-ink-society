package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.SearchHistory;

public interface SearchHistoryRepository extends CrudRepository<SearchHistory, Long> {

}

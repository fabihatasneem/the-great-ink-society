package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.ChapterLikeHistory;

public interface ChapterLikeHistoryRepository extends CrudRepository<ChapterLikeHistory, Long> {
    ChapterLikeHistory findByUser_IdAndChapters_Id(Long id, Long id1);

}

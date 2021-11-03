package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.CommentsOfBooks;

import java.util.List;

public interface CommentsOfBooksRepository extends CrudRepository<CommentsOfBooks, Long> {
    List<CommentsOfBooks> findByChapter_IdAndBook_Id(Long id, Long id1);

}

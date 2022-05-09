package org.thegreatinksociety.repositories;

import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Books;

import java.util.List;

public interface BooksRepository extends CrudRepository<Books, Long> {
    Books findBooksById(Long id);

    List<Books> findByUser_UserName(String userName);

    List<Books> findByGenre_IdAndPublishStatusOrderByNumberOfLikesDesc(Long id, Pageable pageable, int publishStatus);

    List<Books> findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(Long id, Pageable pageable, int publishStatus);

    List<Books> findByUser_IdAndPublishStatusOrderByLastUpdatedDate(Long id, Pageable pageable, int publishStatus);



}

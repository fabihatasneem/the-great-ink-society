package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Books;

import java.util.List;

public interface BooksRepository extends CrudRepository<Books, Long> {

    Books findBooksById(Long id);

    List<Books> findByUser_UserName(String userName);

}

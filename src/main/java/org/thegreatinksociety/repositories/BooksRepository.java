package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Books;

public interface BooksRepository extends CrudRepository<Books, Long> {

}

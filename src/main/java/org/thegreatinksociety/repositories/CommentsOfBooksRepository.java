package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.CommentsOfBooks;

public interface CommentsOfBooksRepository extends CrudRepository<CommentsOfBooks, Long> {

}

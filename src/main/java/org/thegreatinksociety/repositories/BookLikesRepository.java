package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.BookLikes;

public interface BookLikesRepository extends CrudRepository<BookLikes, Long> {
}

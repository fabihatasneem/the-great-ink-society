package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.BookLikes;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Users;

public interface BookLikesRepository extends CrudRepository<BookLikes, Long> {
    BookLikes findByUserAndBook(Users user, Books book);
}

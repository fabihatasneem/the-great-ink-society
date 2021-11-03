package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.BooksRepository;

import java.util.Date;

@RestController
public class MakeBookCompleted {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/makeBookCompleted", method = RequestMethod.POST)
    public boolean makeBookCompleted(@RequestParam Long bookId) {
        Books book = booksRepository.findBooksById(bookId);
        Date todayDate = new Date();

        book.setCompletionStatus(1);
        book.setLastUpdatedDate(todayDate);

        Books updatedBook = booksRepository.save(book);

        return updatedBook.getCompletionStatus() == 1;

    }
}

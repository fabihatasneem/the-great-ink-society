package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.BooksRepository;

@RestController
public class MakeBookPublished {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/makeBookPublished", method = RequestMethod.POST)
    public boolean publishBook(@RequestParam Long bookId) {
        Books book = booksRepository.findBooksById(bookId);

        book.setPublishStatus(1);

        Books publishedBook = booksRepository.save(book);

        return publishedBook.getPublishStatus() == 1;
    }
}

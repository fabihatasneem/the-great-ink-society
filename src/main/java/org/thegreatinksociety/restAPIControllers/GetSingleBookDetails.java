package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.BooksRepository;

@RestController
public class GetSingleBookDetails {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping("/getSingleBookDetails")
    public Books getSingleBookDetails(@RequestParam Long bookId){
        return booksRepository.findBooksById(bookId);
    }
}

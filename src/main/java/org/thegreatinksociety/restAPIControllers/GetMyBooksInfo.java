package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.BooksRepository;

import java.util.List;

@RestController
public class GetMyBooksInfo {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/getMyBooksInfo", method = RequestMethod.POST)
    public List<Books> getMyBooksInfo(@RequestParam String username) {
        return booksRepository.findByUser_UserName(username);
    }
}

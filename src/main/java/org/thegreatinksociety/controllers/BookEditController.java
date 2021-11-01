package org.thegreatinksociety.controllers;

import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.BooksRepository;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@Controller
public class BookEditController {
    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/bookEdit")
    public void bookEdit(@RequestParam String description, @RequestParam Long bookId, HttpServletResponse response, HttpRequest request) throws IOException {
        Books book = booksRepository.findBooksById(bookId);
        Date todayDate = new Date();

        book.setDescription(description);
        book.setLastUpdatedDate(todayDate);

        booksRepository.save(book);

        response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsUser?id=" + bookId);
    }
}

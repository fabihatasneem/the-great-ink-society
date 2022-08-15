package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.AwardsRepository;
import org.thegreatinksociety.repositories.BooksRepository;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class GetBookPageController {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping("/bookDetails")
    public void getBookDetailsPage(@RequestParam Long id, HttpSession session, HttpServletResponse response) throws IOException {
        session.setAttribute("bookId", id);

        if (session.getAttribute("userId") == null) {
            response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsViewer?id=" + id);
        } else {
            Long userId = Long.valueOf(session.getAttribute("userId").toString());

            Books books = booksRepository.findBooksById(id);

            if (userId.equals(books.getUser().getId())) {
                response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsUser?id=" + id);
            } else {
                response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsViewer?id=" + id);
            }
        }
    }
}

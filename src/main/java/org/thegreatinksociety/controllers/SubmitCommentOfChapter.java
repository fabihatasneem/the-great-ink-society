package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.CommentsOfBooks;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.ChaptersRepository;
import org.thegreatinksociety.repositories.CommentsOfBooksRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class SubmitCommentOfChapter {
    @Autowired
    private ChaptersRepository chaptersRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private CommentsOfBooksRepository commentsOfBooksRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/submitCommentOfChapter", method = RequestMethod.POST)
    public void submitCommentOfChapter(@RequestParam String commentDesc, @RequestParam Long chapterId, @RequestParam Long bookId, HttpSession session, HttpServletResponse response) throws IOException, ParseException {
        Chapters chapter = chaptersRepository.findChaptersById(chapterId);
        Books book = booksRepository.findBooksById(bookId);

        String username = session.getAttribute("username").toString();

        Users user = usersRepository.findByUserName(username);

        Date todayDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        todayDate = dateFormat.parse(dateFormat.format(todayDate));
        System.out.println(dateFormat.format(todayDate));
        System.out.println(todayDate);

        chapter.setNumberOfComments(chapter.getNumberOfComments() + 1);

        CommentsOfBooks commentsOfBooks = new CommentsOfBooks();

        commentsOfBooks.setBook(book);
        commentsOfBooks.setChapter(chapter);
        commentsOfBooks.setCommentDescription(commentDesc);
        commentsOfBooks.setUser(user);
        commentsOfBooks.setCommentDescription(commentDesc);
        commentsOfBooks.setCommentDate(todayDate);

        commentsOfBooksRepository.save(commentsOfBooks);

        response.sendRedirect(GlobalVariable.localUrl + "/reading?id=" + chapterId);
    }
}

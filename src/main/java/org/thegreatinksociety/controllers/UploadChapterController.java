package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.ChaptersRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@RestController
public class UploadChapterController {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private ChaptersRepository chaptersRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/uploadChapter")
    public void uploadChapter(HttpSession session, HttpServletResponse response,
                              @RequestParam String chapterName, @RequestParam String chapterId, @RequestParam String chapterFileName,
                              @RequestParam Long bookId, @RequestParam int publishedStatus)
            throws IOException {

        if (publishedStatus == 2) {
            response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsUser?id=" + bookId);
            return;
        }

        String userName = session.getAttribute("username").toString();
        Users user = usersRepository.findByUserName(userName);
        Books book = booksRepository.findBooksById(bookId);

        String fileName = chapterFileName;
        Date todayDate = new Date();


        Chapters chapterToBeSaved;

        Long oldChapterId;
        if (!chapterId.equals("")) {
            //If it is a draft
            oldChapterId = Long.parseLong(chapterId);

            chapterToBeSaved = chaptersRepository.findChaptersById(oldChapterId);

        } else {
            //If it is a new Chapter

            chapterToBeSaved = new Chapters();
        }

        chapterToBeSaved.setUser(user);
        chapterToBeSaved.setBook(book);
        chapterToBeSaved.setStatus(publishedStatus);
        chapterToBeSaved.setChapterName(chapterName);
        chapterToBeSaved.setTextFileName(fileName);
        chapterToBeSaved.setTextFileLink(fileName);
        chapterToBeSaved.setCreationDate(todayDate);

        if (publishedStatus == 1) {
            int numberOfChapters = book.getNumberOfChapters();
            numberOfChapters += 1;
            book.setNumberOfChapters(numberOfChapters);
            book.setLastUpdatedDate(todayDate);
        }

        Chapters submittedChapter = chaptersRepository.save(chapterToBeSaved);
        Books updatedBook = booksRepository.save(book);

        if (publishedStatus == 0) {
            response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsUser?id=" + bookId);
        } else {
            response.sendRedirect(GlobalVariable.localUrl + "/reading?id=" + submittedChapter.getId());
        }
    }
}

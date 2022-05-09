package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.entities.Language;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.GenreRepository;
import org.thegreatinksociety.repositories.LanguageRepository;
import org.thegreatinksociety.repositories.UsersRepository;
import org.thegreatinksociety.util.FileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.*;
import java.util.Collection;
import java.util.Date;

@Controller
public class BookSubmitController {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private LanguageRepository languageRepository;

    @Autowired
    private GenreRepository genreRepository;

    @RequestMapping(value = "/submitBook")
    public void submitBook(HttpServletResponse response, HttpServletRequest request, HttpSession session,
                           @RequestParam String bookName, @RequestParam String description, @RequestParam long language,
                           @RequestParam long genre, @RequestParam int publishedStatus) throws IOException, ServletException {
        Collection<Part> parts;
        String fileName = null;
        String path = GlobalVariable.fileUploadPath;
        Books books = new Books();

        parts = request.getParts();
        if (parts != null && parts.size() > 0) {
            Part filePart_recordFile = request.getPart("bookCover");
            fileName = FileUpload.upload(filePart_recordFile, path);
        }

        if (fileName == null) {
            fileName = "noBookCover.jpg";
        }

        Users user = usersRepository.findByUserName(session.getAttribute("username").toString());
        Language language1 = languageRepository.findLanguageById(language);
        Genre genre1 = genreRepository.findGenreById(genre);
        Date today = new Date();

        books.setUser(user);
        books.setBookName(bookName);
        books.setDescription(description);
        books.setCreationDate(today);
        books.setLastUpdatedDate(today);
        books.setLanguage(language1);
        books.setGenre(genre1);
        books.setPublishStatus(publishedStatus);
        books.setCoverPhotoName(fileName);
        books.setCoverPhotoLink(path + fileName);

        Books submittedBook = booksRepository.save(books);

        session.setAttribute("bookId", submittedBook.getId());

        if (publishedStatus == 1) {
            response.sendRedirect(GlobalVariable.localUrl + "/chapterWrite?chapterNo=1");
        } else {
            response.sendRedirect(GlobalVariable.localUrl + "/bookDetailsUser?id=" + submittedBook.getId());
        }
    }

}

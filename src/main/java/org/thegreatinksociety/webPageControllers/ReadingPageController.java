package org.thegreatinksociety.webPageControllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.repositories.*;
import org.thegreatinksociety.restAPIControllers.ChapterLike;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Date;

@Controller
public class ReadingPageController {

    @Autowired
    private ChaptersRepository chaptersRepository;

    @Autowired
    private ChapterLikeHistoryRepository chapterLikeHistoryRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private ReadingHistoryRepository readingHistoryRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/reading")
    public String getReadingPage(ModelMap model, @RequestParam Long id, HttpSession session, HttpServletResponse response) throws IOException {
        if (session.getAttribute("userId") == null) {
            return "signin";
        }

        Users reader = usersRepository.findUsersById(Long.parseLong(session.getAttribute("userId").toString()));

        Chapters chapter = chaptersRepository.findChaptersById(id);
        Books book = chapter.getBook();
        ChapterLikeHistory chapterLike = chapterLikeHistoryRepository.findByUser_IdAndChapters_Id(Long.parseLong(session.getAttribute("userId").toString()), id);
        Users user = chapter.getUser();
        int isWriter = 0;
        if (user.getId() == Integer.parseInt(session.getAttribute("userId").toString())) {
            isWriter = 1;
        }

        String fileName = chapter.getTextFileLink();

        XWPFWordExtractor extractor;
        URL file = new URL(fileName);
        XWPFDocument document = new XWPFDocument(file.openStream());
        extractor = new XWPFWordExtractor(document);
        String fileData = extractor.getText();
        String text = "";
        String[] texts = fileData.split("\n");
        for (String s: texts) {
            text += "<p>" + s + "</p>";
        }

        model.addAttribute("bookName", chapter.getBook().getBookName());
        model.addAttribute("chapterName", chapter.getChapterName());
        model.addAttribute("genre", chapter.getBook().getGenre().getName());
        model.addAttribute("creationDate", chapter.getCreationDate());
        model.addAttribute("totalReacts", chapter.getNumberOfLikes());
        model.addAttribute("totalViews", chapter.getTotalViews());
        model.addAttribute("totalComments", chapter.getNumberOfComments());
        model.addAttribute("paragraph", text);
        model.addAttribute("bookCoverPhotoLink", chapter.getBook().getCoverPhotoLink());
        model.addAttribute("userFullName", user.getFullName());
        model.addAttribute("userFollowers", user.getFollowers());
        model.addAttribute("numberOfAwards", user.getNumberOfAwards());
        model.addAttribute("numberOfBadges", user.getNumberOfBadges());
        model.addAttribute("numberOfReacts", user.getWritingLikes());
        model.addAttribute("userBio", user.getBio());
        model.addAttribute("userProfileLink", user.getProfilePicLink());

        if (chapterLike == null) {
            model.addAttribute("chapterLiked", 0);
        } else {
            model.addAttribute("chapterLiked", 1);
        }

        model.addAttribute("isWriter", isWriter);
        model.addAttribute("chapterId", chapter.getId());
        model.addAttribute("bookId", chapter.getBook().getId());
        model.addAttribute("userId", chapter.getUser().getId());
        model.addAttribute("genreId", chapter.getBook().getGenre().getId());

        chapter.setTotalViews(chapter.getTotalViews() + 1);
        book.setTotalViews(book.getTotalViews() + 1);
        Chapters updatedChapter = chaptersRepository.save(chapter);
        Books updatedBook = booksRepository.save(book);

        ReadingHistory readingHistory = new ReadingHistory();
        readingHistory.setBook(updatedBook);
        readingHistory.setChapter(updatedChapter);
        readingHistory.setLastReadingTime(new Date());
        readingHistory.setUser(reader);

        readingHistoryRepository.save(readingHistory);

        return "reading";
    }
}

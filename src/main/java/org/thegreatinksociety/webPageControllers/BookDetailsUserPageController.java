package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Awards;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.AwardsRepository;
import org.thegreatinksociety.repositories.BooksRepository;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookDetailsUserPageController {

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private AwardsRepository awardsRepository;

    @RequestMapping("/bookDetailsUser")
    public String getBookDetailsUserPage(@RequestParam Long id, Model model, HttpSession session) {
        session.setAttribute("bookId", id);

        Books books = booksRepository.findBooksById(id);
        int nextChapterNo = books.getNumberOfChapters() + 1;

        List<Awards> awardsList = awardsRepository.findByWinnerBookId(id);
        int numberOfAwards = awardsList == null ? 0 : awardsList.size();

        model.addAttribute("bookId", books.getId());
        model.addAttribute("bookName", books.getBookName());
        model.addAttribute("numberOfChapters", books.getNumberOfChapters());
        model.addAttribute("nextChapterNo", nextChapterNo);
        model.addAttribute("language", books.getLanguage().getLanguageName());
        model.addAttribute("genre", books.getGenre().getName());
        model.addAttribute("lastUpdated", books.getLastUpdatedDate());
        model.addAttribute("totalViews", books.getTotalViews());
        model.addAttribute("totalReacts", books.getNumberOfLikes());
        model.addAttribute("totalComments", books.getNumberOfComments());
        model.addAttribute("totalAwards", numberOfAwards);
        model.addAttribute("completionStatus", books.getCompletionStatus());
        model.addAttribute("publishStatus", books.getPublishStatus());
        model.addAttribute("description", books.getDescription());
        model.addAttribute("userId", books.getUser().getId());
        model.addAttribute("bookCoverLink", books.getCoverPhotoLink());

        return "/bookDetailsUser";
    }
}

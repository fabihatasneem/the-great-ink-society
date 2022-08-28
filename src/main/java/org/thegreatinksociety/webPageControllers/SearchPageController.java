package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.GenreRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SearchPageController {

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/search")
    public String getSearchResultPage(Model model, @RequestParam String q, HttpSession session){
        String userId = session.getAttribute("userId").toString();
        Users user = usersRepository.findUsersById(Long.parseLong(userId));

        List<Books> searchedBooks = booksRepository.findByBookNameContainsIgnoreCase(q);
        List<PodcastSeries> searchedPodcasts = podcastSeriesRepository.findBySeriesNameContainsIgnoreCase(q);

        String bookDesign = "<p>No Books Found</p>";
        String podcastDesign = "<p>No Podcasts Found</p>";

        if (searchedBooks.size() != 0) {
            bookDesign = "";
            for (Books book : searchedBooks) {

                bookDesign += "<div id=\" "+ book.getId() +" \" data-toggle=\"modal\" data-target=\"#detailsModal\" onclick=\"openModal(" + userId + "," + book.getId() + ")\" class=\"card\" style=\"width: 100%;\"> \n" +
                        "                    <div class=\"card-horizontal\">\n" +
                        "                    <div class=\"img-square-wrapper\">\n" +
                        "                    <img class=\"\" src=" + book.getCoverPhotoLink() + " \n" +
                        "                    alt = \"Card image cap\" style=\"width: 200px; height: 200px;\"> \n" +
                        "                     </div> \n" +
                        "                    <div class=\"card-body\">\n" +
                        "                    <h4> "+ book.getBookName() +" </h4> \n" +
                        "                    <small><i class=\"fas fa-heart\" style=\"color:red;\"></i> "+ book.getNumberOfLikes() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-comments\"></i> "+ book.getNumberOfComments() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-eye\"></i> "+ book.getTotalViews() +" </small> \n" +
                        "                    <hr> \n" +
                        "                    <p class=\"card-text\"> "+ book.getDescription() +" </p> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    <br>";
            }
        }

        if (searchedPodcasts.size() != 0) {
            podcastDesign = "";
            for (PodcastSeries podcast : searchedPodcasts) {
//                String userProfileUrl = GlobalVariable.localUrl + "/getProfile?id=" + podcast.getUser().getId();
//                String url = GlobalVariable.localUrl + "/podcastDetailsViewer?id=" + podcast.getId();

                podcastDesign += "<div id=\" "+ podcast.getId() +" \" data-target=\"#detailsModal\" onclick=\"openModal(" + userId + "," + podcast.getId() + ")\" class=\"card\" style=\"width: 100%;\"> \n" +
                        "                    <div class=\"card-horizontal\">\n" +
                        "                    <div class=\"img-square-wrapper\">\n" +
                        "                    <img class=\"\" src=" + podcast.getCoverPhotoLink() + " \n" +
                        "                    alt = \"Card image cap\" style=\"width: 200px; height: 200px;\"> \n" +
                        "                     </div> \n" +
                        "                    <div class=\"card-body\"> +\n" +
                        "                    <h4> "+ podcast.getSeriesName() +" </h4> \n" +
                        "                    <small><i class=\"fas fa-heart\" style=\"color:red;\"></i> "+ podcast.getNumberOfLikes() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-comments\"></i> "+ podcast.getNumberOfComments() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-eye\"></i> "+ podcast.getTotalViews() +" </small> \n" +
                        "                    <hr> \n" +
                        "                    <p class=\"card-text\"> "+ podcast.getDescription() +" </p> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    <br>";
            }
        }

        model.addAttribute("bookDesign", bookDesign);
        model.addAttribute("podcastDesign", podcastDesign);
        model.addAttribute("searchedWord", q);


        return "/searchResults";
    }

}

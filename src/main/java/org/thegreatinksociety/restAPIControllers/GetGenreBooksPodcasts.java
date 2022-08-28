package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class GetGenreBooksPodcasts {
    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/getGenreDetails", method = RequestMethod.POST)
    public Map<String, String> getAuthorSearchQuery(@RequestParam Long genreId, HttpSession session){
        String userId = session.getAttribute("userId") == null ? null : session.getAttribute("userId").toString();
        String bookDesign = "<p>No Books Found</p>";
        String podcastDesign = "<p>No Podcasts Found</p>";

        List<PodcastSeries> podcastSeriesList = podcastSeriesRepository.findByGenre_IdAndPublishStatusOrderBySeriesNameAsc(genreId, 1);
        List<Books> booksList = booksRepository.findByGenre_IdAndPublishStatusOrderByBookNameAsc(genreId, 1);

        if (booksList.size() != 0) {
            bookDesign = "";
            for (Books book : booksList) {

                bookDesign += "<div id=\" "+ book.getId() +" \" data-toggle=\"modal\" data-target=\"#detailsModal\" onclick=\"openModalBooks(" + userId + "," + book.getId() + ")\" class=\"card\" style=\"width: 100%;\"> \n" +
                        "                    <div class=\"card-horizontal\">\n" +
                        "                    <div class=\"img-square-wrapper\">\n" +
                        "                    <img class=\"\" src=" + book.getCoverPhotoLink() + " \n" +
                        "                    alt = \"Card image cap\" style=\"width: 200px; height: 200px;\"> \n" +
                        "                     </div> \n" +
                        "                    <div class=\"card-body\">\n" +
                        "                    <h4> "+ book.getBookName() +" </h4> \n" +
                        "                    <h6 style=\"font-size: small;\"> "+ book.getUser().getFullName() + " </h6>\n" +
                        "                    <small><i class=\"fas fa-heart\" style=\"color:red;\"></i> "+ book.getNumberOfLikes() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-comments\"></i> "+ book.getNumberOfComments() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-eye\"></i> "+ book.getTotalViews() +" </small> \n" +
                        "                    <hr> \n" +
                        "                    <p class=\"card-text\"> "+ book.getDescription() +" </p> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    <br><br>";
            }
        }

        if (podcastSeriesList.size() != 0) {
            podcastDesign = "";
            for (PodcastSeries podcast : podcastSeriesList) {

                podcastDesign += "<div id=\" "+ podcast.getId() +" \" data-toggle=\"modal\" data-target=\"#detailsModal\" onclick=\"openModalPodcasts(" + userId + "," + podcast.getId() + ")\" class=\"card\" style=\"width: 100%;\"> \n" +
                        "                    <div class=\"card-horizontal\">\n" +
                        "                    <div class=\"img-square-wrapper\">\n" +
                        "                    <img class=\"\" src=" + podcast.getCoverPhotoLink() + " \n" +
                        "                    alt = \"Card image cap\" style=\"width: 200px; height: 200px;\"> \n" +
                        "                     </div> \n" +
                        "                    <div class=\"card-body\">\n" +
                        "                    <h4> "+ podcast.getSeriesName() +" </h4> \n" +
                        "                    <h6 style=\"font-size: small;\"> "+ podcast.getUser().getFullName() + " </h6>\n" +
                        "                    <small><i class=\"fas fa-heart\" style=\"color:red;\"></i> "+ podcast.getNumberOfLikes() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-comments\"></i> "+ podcast.getNumberOfComments() +" &nbsp;  \n" +
                        "                    <i class=\"fas fa-eye\"></i> "+ podcast.getTotalViews() +" </small> \n" +
                        "                    <hr> \n" +
                        "                    <p class=\"card-text\"> "+ podcast.getDescription() +" </p> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    </div> \n" +
                        "                    <br><br>";
            }
        }

        Map<String, String> map = new HashMap<>();
        map.put("books", bookDesign);
        map.put("podcasts", podcastDesign);

        return map;
    }
}

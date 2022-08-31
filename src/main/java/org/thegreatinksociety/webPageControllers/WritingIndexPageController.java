package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.entities.ReadingHistory;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.GenreRepository;
import org.thegreatinksociety.repositories.ReadingHistoryRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class WritingIndexPageController {
    @Autowired
    private GenreRepository genreRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private ReadingHistoryRepository readingHistoryRepository;

    @RequestMapping("/writingIndex")
    public String getWritingIndex(Model model, HttpSession session) {
        String design = "";
        List<Genre> genreList = genreRepository.findAll();
        String lastDesign = "";

        if (session.getAttribute("userId") != null) {
            Users user = usersRepository.findUsersById(Long.parseLong(session.getAttribute("userId").toString()));

            ReadingHistory readingHistory = readingHistoryRepository.findFirstByUserOrderByLastReadingTimeDesc(user);

            lastDesign = "<div class=\"latest-products\">\n" +
                    "            <div class=\"section-heading\">\n" +
                    "                <h2>Continue From Where You Left Off</h2>\n" +
                    "            </div>\n" +
                    "            <div class=\"d-block d-md-flex podcast-entry bg-white mb-5\" data-aos=\"fade-up\">\n" +
                    "                <div class=\"image\" style=\"background-image: url('" + readingHistory.getBook().getCoverPhotoLink() +"')\"></div>\n" +
                    "                <div class=\"text\">\n" +
                    "                    <h3 class=\"font-weight-medium\" style=\"font-size: 1.3rem;\">\n" +
                    "                        <a href=\"" + GlobalVariable.localUrl +"/reading?id=" + readingHistory.getChapter().getId() + "\">Chapter  : " + readingHistory.getChapter().getChapterName() + "</a>\n" +
                    "                    </h3>\n" +
                    "                    <hr>\n" +
                    "                    <h6 class=\"font-weight-light\" style=\"margin-top: 7px; margin-bottom: 8px; font-size: 1.1rem;\">\n" +
                    "                        " + readingHistory.getBook().getBookName() +"\n" +
                    "                    </h6>\n" +
                    "                    <div class=\"text-white mb-3\">\n" +
                    "                    </div>\n" +
                    "                    <hr>\n" +
                    "                    <p class=\"mb-4\">\n" +
                                          readingHistory.getBook().getDescription() +
                    "                    </p>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "            <div class=\"section-heading\">\n" +
                    "                <a href=\"" + GlobalVariable.localUrl  +"/reading?id=" + readingHistory.getChapter().getId() +"\">Go to Chapter Page <i class=\"fa fa-angle-right\"></i></a>\n" +
                    "            </div>\n" +
                    "        </div>";
        }

        int count = 1;

        for (Genre genre : genreList) {
            if (count == 1) {
                design += "<div class=\"carousel-item active\">\n" +
                        "                            <div class=\"col-md-4\">\n" +
                        "                                <div class=\"single-cat-widget\">\n" +
                        "                                    <div class=\"content relative\">\n" +
                        "                                        <div class=\"overlay overlay-bg\"></div>\n" +
                        "                                        <a href=\"genre.jsp\" target=\"_blank\">\n" +
                        "                                            <div class=\"thumb\" style=\"height: 170px;\">\n" +
                        "                                                <img class=\"content-image img-fluid d-block mx-auto\"\n" +
                        "                                                     src=\"" + genre.getImageLink() + "\" alt=\"\"/>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"content-details\">\n" +
                        "                                                <h4 class=\"content-title mx-auto text-uppercase\">\n" +
                        "                                                    " + genre.getName() + "\n" +
                        "                                                </h4>\n" +
                        "                                                <span></span>\n" +
                        "                                            </div>\n" +
                        "                                        </a>\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>";
            } else {
                design += "<div class=\"carousel-item\">\n" +
                        "                            <div class=\"col-md-4\">\n" +
                        "                                <div class=\"single-cat-widget\">\n" +
                        "                                    <div class=\"content relative\">\n" +
                        "                                        <div class=\"overlay overlay-bg\"></div>\n" +
                        "                                        <a href=\"genre.jsp\" target=\"_blank\">\n" +
                        "                                            <div class=\"thumb\" style=\"height: 170px;\">\n" +
                        "                                                <img class=\"content-image img-fluid d-block mx-auto\"\n" +
                        "                                                     src=\"" + genre.getImageLink() + "\" alt=\"\"/>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"content-details\">\n" +
                        "                                                <h4 class=\"content-title mx-auto text-uppercase\">\n" +
                        "                                                    " + genre.getName() + "\n" +
                        "                                                </h4>\n" +
                        "                                                <span></span>\n" +
                        "                                            </div>\n" +
                        "                                        </a>\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>";
            }
            count++;
        }
        model.addAttribute("coverLink", GlobalVariable.WRITING_BACKGROUND_LINK);
        model.addAttribute("genreDesign", design);
        model.addAttribute("lastDesign", lastDesign);
        return "/writingIndex";
    }
}

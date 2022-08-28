package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.GenreRepository;

import java.util.List;

@Controller
public class WritingIndexPageController {
    @Autowired
    private GenreRepository genreRepository;

    @RequestMapping("/writingIndex")
    public String getWritingIndex(Model model) {
        String design = "";
        List<Genre> genreList = genreRepository.findAll();

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
        return "/writingIndex";
    }
}

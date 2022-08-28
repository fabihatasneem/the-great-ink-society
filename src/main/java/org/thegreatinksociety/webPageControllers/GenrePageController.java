package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.repositories.GenreRepository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class GenrePageController {

    @Autowired
    private GenreRepository genreRepository;

    @RequestMapping("/genre")
    public String getGenrePage(Model model){

        List<Genre> genreList = genreRepository.findAll();
        String design = "";

        for (Genre genre : genreList) {
            design += "<div class=\"col-sm-3\">\n" +
                    "                        <div class=\"single-cat-widget\">\n" +
                    "                            <div class=\"content relative\" onclick=\"showBooksPodcasts(" + genre.getId() + ")\">\n" +
                    "                                <div class=\"overlay overlay-bg\"></div>\n" +
                    "                                <img class=\"content-image img-fluid d-block mx-auto\"\n" +
                    "                                     src=\"" + genre.getImageLink() + "\" alt=\"\" />\n" +
                    "                                <div class=\"content-details\">\n" +
                    "                                    <h4 class=\"content-title mx-auto text-uppercase\">\n" +
                    "                                        " + genre.getName() +  "\n" +
                    "                                    </h4>\n" +
                    "                                    <span></span>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>";
        }


        model.addAttribute("genreDesign", design);

        return "/genre";
    }

}

package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.GenreRepository;
import org.thegreatinksociety.repositories.LanguageRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;
import org.thegreatinksociety.repositories.UsersRepository;
import org.thegreatinksociety.util.FileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;

@Controller
public class PodcastSubmit {

    @Autowired
    private LanguageRepository languageRepository;

    @Autowired
    private GenreRepository genreRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/podcastSubmit")
    public void podcastSubmit(HttpServletResponse response, HttpSession session,
                              @RequestParam String podcastname, @RequestParam String description, @RequestParam long language,
                              @RequestParam long genre, @RequestParam int publishedStatus, @RequestParam String podcastCoverFile)
            throws ServletException, IOException {
        PodcastSeries podcast = new PodcastSeries();
        Language lang = languageRepository.findLanguageById(language);
        Genre gen = genreRepository.findGenreById(genre);
        String username = session.getAttribute("username").toString();
        Users user = usersRepository.findByUserName(username);
        Date today = new Date();

        podcast.setUser(user);
        podcast.setSeriesName(podcastname);
        podcast.setLanguage(lang);
        podcast.setGenre(gen);
        podcast.setDescription(description);
        podcast.setCreationDate(today);
        podcast.setPublishStatus(publishedStatus);
        podcast.setCoverPhotoName(podcastCoverFile);
        podcast.setCoverPhotoLink(podcastCoverFile);
        long podcastId = podcastSeriesRepository.save(podcast).getId();
        session.setAttribute("podcastId", podcastId);
        response.sendRedirect(GlobalVariable.localUrl + "/uploadEpisode");
    }

}

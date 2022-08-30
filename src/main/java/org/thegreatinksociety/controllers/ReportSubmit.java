package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@Controller
public class ReportSubmit {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private EpisodesRepository episodesRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private ChaptersRepository chaptersRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private ReportsRepository reportsRepository;

    @RequestMapping("/reportSubmit")
    public void episodeSubmit(HttpServletResponse response, HttpSession session, HttpServletRequest request,
                              @RequestParam String reportDesc, @RequestParam String referenceLink, @RequestParam int page)
            throws IOException {
        if (session.getAttribute("userId") == null) {

        } else {
            Long userId = Long.parseLong(session.getAttribute("userId").toString());
            Users user = usersRepository.findUsersById(userId);

            Reports report = new Reports();

            if (page == 1) {
                Long bookId = Long.parseLong(request.getParameter("bookId"));
                Long chapterId = Long.parseLong(request.getParameter("chapterId"));
                Long authorId = Long.parseLong(request.getParameter("authorId"));

                Chapters chapters = chaptersRepository.findChaptersById(chapterId);
                Books book = booksRepository.findBooksById(bookId);
                Users convict = usersRepository.findUsersById(authorId);


                report.setBooks(book);
                report.setChapters(chapters);
                report.setConvict(convict);
                report.setDate(new Date());
                report.setDescription(reportDesc);
                report.setUser(user);
                report.setReferenceLink(referenceLink);
                report.setSolveStatus(0);

                reportsRepository.save(report);

                response.sendRedirect(GlobalVariable.localUrl + "/reading?id=" + chapterId);

            } else if (page == 2){
                Long podcastId = Long.parseLong(request.getParameter("podcastId"));
                Long episodeId = Long.parseLong(request.getParameter("episodeId"));
                Long uploaderId = Long.parseLong(request.getParameter("uploaderId"));

                Episodes episode = episodesRepository.findEpisodesById(episodeId);
                PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);
                Users convict = usersRepository.findUsersById(uploaderId);


                report.setPodcastSeries(podcast);
                report.setEpisodes(episode);
                report.setConvict(convict);
                report.setDate(new Date());
                report.setDescription(reportDesc);
                report.setUser(user);
                report.setReferenceLink(referenceLink);
                report.setSolveStatus(0);

                reportsRepository.save(report);

                response.sendRedirect(GlobalVariable.localUrl + "/listening?id=" + episodeId);
            }
        }

    }
}

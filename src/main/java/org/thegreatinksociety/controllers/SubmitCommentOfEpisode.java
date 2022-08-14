package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class SubmitCommentOfEpisode {
    @Autowired
    private EpisodesRepository episodesRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private CommentsOfPodcastsRepository commentsOfPodcastsRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/submitCommentOfEpisode", method = RequestMethod.POST)
    public void submitCommentOfChapter(@RequestParam String commentDesc, @RequestParam Long episodeId, @RequestParam Long podcastId, HttpSession session, HttpServletResponse response) throws IOException, ParseException {
        Episodes episode = episodesRepository.findEpisodesById(episodeId);
        PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);

        String username = session.getAttribute("username").toString();

        Users user = usersRepository.findByUserName(username);

        Date todayDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        todayDate = dateFormat.parse(dateFormat.format(todayDate));
        System.out.println(dateFormat.format(todayDate));
        System.out.println(todayDate);

        episode.setNumberOfComments(episode.getNumberOfComments() + 1);

        CommentsOfPodcast commentsOfPodcast = new CommentsOfPodcast();

        commentsOfPodcast.setEpisode(episode);
        commentsOfPodcast.setPodcastSeries(podcast);
        commentsOfPodcast.setCommentDescription(commentDesc);
        commentsOfPodcast.setUser(user);
        commentsOfPodcast.setCommentDescription(commentDesc);
        commentsOfPodcast.setCommentDate(todayDate);

        commentsOfPodcastsRepository.save(commentsOfPodcast);

        response.sendRedirect(GlobalVariable.localUrl + "/listening?episodeId=" + episodeId);
    }
}

package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Episodes;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.EpisodesRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;
import org.thegreatinksociety.repositories.UsersRepository;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class EpisodeSubmit {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private EpisodesRepository episodesRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping("/episodeSubmit")
    public void episodeSubmit(HttpServletResponse response, HttpSession session,
                              @RequestParam String episodeName, @RequestParam int publishedStatus, @RequestParam String episodeFileName)
            throws IOException {
        if(publishedStatus != 2) {
            Episodes episode = new Episodes();

            String fileName;

            if (episodeFileName.equals("")) {
                fileName = "NoAudio.wav";
            } else {
                fileName = episodeFileName;
            }

            String username = session.getAttribute("username").toString();
            Users user = usersRepository.findByUserName(username);
            long podcastId = Long.parseLong(session.getAttribute("podcastId").toString());
            PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);

            episode.setUser(user);
            episode.setPodcastSeries(podcast);
            episode.setEpisodeName(episodeName);
            episode.setAudioFileName(fileName);
            episode.setAudioFileLink(fileName);
            episode.setStatus(publishedStatus);
            episodesRepository.save(episode);
        }
        response.sendRedirect(GlobalVariable.localUrl + "/podcastCreate");
    }
}

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
import org.thegreatinksociety.util.FileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Collection;

@Controller
public class EpisodeSubmit {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private EpisodesRepository episodesRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping("/episodeSubmit")
    public boolean episodeSubmit(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam String episodeName, @RequestParam int publishedStatus) throws ServletException, IOException {
        if(publishedStatus != 2) {
            Episodes episode = new Episodes();

            Collection<Part> parts;
            String fileName = null;
            String path = GlobalVariable.fileUploadPath;

            parts = request.getParts();
            if (parts != null && parts.size() > 0) {
                Part filePart_recordFile = request.getPart("episodefilename");
                fileName = FileUpload.upload(filePart_recordFile, path);
            }

            String username = session.getAttribute("username").toString();
            Users user = usersRepository.findByUserName(username);
            long podcastId = Long.parseLong(session.getAttribute("podcastId").toString());
            PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(podcastId);

            episode.setUser(user);
            episode.setPodcastSeries(podcast);
            episode.setEpisodeName(episodeName);
            episode.setAudioFileName(fileName);
            episode.setAudioFileLink(path + fileName);
            episode.setStatus(publishedStatus);
            episodesRepository.save(episode);
        }
        response.sendRedirect(GlobalVariable.localUrl + "/podcastCreate");
        return true;
    }
}

package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.repositories.*;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class ListeningPageController {

    @Autowired
    private EpisodesRepository episodesRepository;

    @Autowired
    private EpisodeLikeHistoryRepository episodeLikeHistoryRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private ListeningHistoryRepository listeningHistoryRepository;

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/listening")
    public String getListeningPage(ModelMap model, @RequestParam Long episodeId, HttpSession session) {
        if (session.getAttribute("userId") == null) {
            return "signin";
        }

        Users listener =usersRepository.findUsersById(Long.parseLong(session.getAttribute("userId").toString()));

        Episodes episode = episodesRepository.findEpisodesById(episodeId);
        PodcastSeries podcast = episode.getPodcastSeries();
        EpisodeLikeHistory episodeLike = episodeLikeHistoryRepository.findByUser_IdAndEpisodes_Id(Long.parseLong(session.getAttribute("userId").toString()), episodeId);
        Users user = episode.getUser();
        int isUploader = 0;
        if (user.getId() == Integer.parseInt(session.getAttribute("userId").toString())) {
            isUploader = 1;
        }

        String fileName = episode.getAudioFileName();
        String fileLink = episode.getAudioFileLink();

        model.addAttribute("podcastName", episode.getPodcastSeries().getSeriesName());
        model.addAttribute("episodeName", episode.getEpisodeName());
        model.addAttribute("genre", episode.getPodcastSeries().getGenre().getName());
//        model.addAttribute("creationDate", episode.get());
        model.addAttribute("totalReacts", episode.getNumberOfLikes());
        model.addAttribute("totalViews", episode.getTotalViews());
        model.addAttribute("totalComments", episode.getNumberOfComments());
        model.addAttribute("podcastCoverPhotoLink", episode.getPodcastSeries().getCoverPhotoLink());
        model.addAttribute("audioFileLink", fileLink);
        model.addAttribute("audioFileName", fileName);
        model.addAttribute("userFullName", user.getFullName());
        model.addAttribute("userFollowers", user.getFollowers());
        model.addAttribute("numberOfAwards", user.getNumberOfAwards());
        model.addAttribute("numberOfBadges", user.getNumberOfBadges());
        model.addAttribute("numberOfReacts", user.getWritingLikes());
        model.addAttribute("userBio", user.getBio());
        model.addAttribute("userProfileLink", user.getProfilePicLink());

        if (episodeLike == null) {
            model.addAttribute("episodeLiked", 0);
        } else {
            model.addAttribute("episodeLiked", 1);
        }

        model.addAttribute("isUploader", isUploader);
        model.addAttribute("episodeId", episode.getId());
        model.addAttribute("date", episode.getPublishDate());
        model.addAttribute("podcastId", episode.getPodcastSeries().getId());
        model.addAttribute("userId", episode.getUser().getId());
        model.addAttribute("genreId", episode.getPodcastSeries().getGenre().getId());

        episode.setTotalViews(episode.getTotalViews() + 1);
        podcast.setTotalViews(podcast.getTotalViews() + 1);
        Episodes updatedEpisode = episodesRepository.save(episode);
        PodcastSeries updatedPodcast = podcastSeriesRepository.save(podcast);

        ListeningHistory listeningHistory = new ListeningHistory();
        listeningHistory.setEpisodes(updatedEpisode);
        listeningHistory.setLastListeningTime(new Date());
        listeningHistory.setPodcastSeries(updatedPodcast);
        listeningHistory.setUser(listener);

        listeningHistoryRepository.save(listeningHistory);

        return "listening";
    }
}

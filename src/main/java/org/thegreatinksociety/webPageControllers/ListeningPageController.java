package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.ChapterLikeHistory;
import org.thegreatinksociety.entities.EpisodeLikeHistory;
import org.thegreatinksociety.entities.Episodes;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.EpisodeLikeHistoryRepository;
import org.thegreatinksociety.repositories.EpisodesRepository;

import javax.servlet.http.HttpSession;

@Controller
public class ListeningPageController {

    @Autowired
    EpisodesRepository episodesRepository;

    @Autowired
    EpisodeLikeHistoryRepository episodeLikeHistoryRepository;

    @RequestMapping("/listening")
    public String getListeningPage(ModelMap model, @RequestParam Long episodeId, HttpSession session) {

        Episodes episode = episodesRepository.findEpisodesById(episodeId);
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
        model.addAttribute("podcastId", episode.getPodcastSeries().getId());
        model.addAttribute("userId", episode.getUser().getId());
        model.addAttribute("genreId", episode.getPodcastSeries().getGenre().getId());


        return "listening";
    }
}

package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Awards;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.repositories.AwardsRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PodcastDetailsViewerPageController {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @Autowired
    private AwardsRepository awardsRepository;

    @RequestMapping("/podcastDetailsViewer")
    public String getPodcastDetailsViewerPage(@RequestParam Long id, Model model, HttpSession session){
        session.setAttribute("podcastId", id);

        PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(id);

        List<Awards> awardsList = awardsRepository.findByWinnerPodcastId(id);
        int numberOfAwards = awardsList == null ? 0 : awardsList.size();

        model.addAttribute("podcastId", podcast.getId());
        model.addAttribute("podcastName", podcast.getSeriesName());
        model.addAttribute("numberOfEpisodes", podcast.getNumberOfEpisodes());
        model.addAttribute("language", podcast.getLanguage().getLanguageName());
        model.addAttribute("genre", podcast.getGenre().getName());
//        model.addAttribute("lastUpdated", podcast.getLastUpdatedDate());
        model.addAttribute("totalViews", podcast.getTotalViews());
        model.addAttribute("totalReacts", podcast.getNumberOfLikes());
        model.addAttribute("totalComments", podcast.getNumberOfComments());
        model.addAttribute("totalAwards", numberOfAwards);
        model.addAttribute("completionStatus", podcast.getCompletionStatus());
        model.addAttribute("publishStatus", podcast.getPublishStatus());
        model.addAttribute("description", podcast.getDescription());
        model.addAttribute("userId", podcast.getUser().getId());
        model.addAttribute("userProfileLink", podcast.getUser().getProfilePicLink());
        model.addAttribute("userFullName", podcast.getUser().getFullName());
        model.addAttribute("userFollowers", podcast.getUser().getFollowers());
        model.addAttribute("numberOfBadges", podcast.getUser().getNumberOfBadges());
        model.addAttribute("numberOfAwards", podcast.getUser().getNumberOfAwards());
        model.addAttribute("numberOfReacts", podcast.getUser().getPodcastLikes());
        model.addAttribute("userBio", podcast.getUser().getBio());
        model.addAttribute("podcastCoverLink", podcast.getCoverPhotoLink());

        return "podcastDetailsViewer";
    }
}

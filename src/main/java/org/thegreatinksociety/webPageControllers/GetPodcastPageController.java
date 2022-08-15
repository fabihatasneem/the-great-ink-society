package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class GetPodcastPageController {

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping("/podcastDetails")
    public void getPodcastDetailsPage(@RequestParam Long id, HttpSession session, HttpServletResponse response) throws IOException {
        session.setAttribute("podcastId", id);

        if (session.getAttribute("userId") == null) {
            response.sendRedirect(GlobalVariable.localUrl + "/podcastDetailsViewer?id=" + id);
        } else {
            Long userId = Long.valueOf(session.getAttribute("userId").toString());

            PodcastSeries podcast = podcastSeriesRepository.findPodcastSeriesById(id);

            if (userId.equals(podcast.getUser().getId())) {
                response.sendRedirect(GlobalVariable.localUrl + "/podcastDetailsUser?id=" + id);
            } else {
                response.sendRedirect(GlobalVariable.localUrl + "/podcastDetailsViewer?id=" + id);
            }
        }
    }
}

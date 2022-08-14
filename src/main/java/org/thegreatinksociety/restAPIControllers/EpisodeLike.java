package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.repositories.*;

@RestController
public class EpisodeLike {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private EpisodesRepository episodesRepository;
    @Autowired
    private EpisodeLikeHistoryRepository episodeLikeHistoryRepository;

    @RequestMapping(value = "/episodeLike", method = RequestMethod.POST)
    public boolean likeUnlikeBook(@RequestParam Long userId, @RequestParam Long episodeId) {
        Users user = usersRepository.findUsersById(userId);
        Episodes episodes = episodesRepository.findEpisodesById(episodeId);
        EpisodeLikeHistory episodeLike = episodeLikeHistoryRepository.findByUser_IdAndEpisodes_Id(userId, episodeId);

        if (episodeLike == null) {
            EpisodeLikeHistory episodeLikeHistory = new EpisodeLikeHistory();

            episodes.setNumberOfLikes(episodes.getNumberOfLikes() + 1);
            episodesRepository.save(episodes);

            episodeLikeHistory.setEpisodes(episodes);
            episodeLikeHistory.setUser(user);

            episodeLikeHistoryRepository.save(episodeLikeHistory);

            return true;
        } else {
            return false;
        }

    }
}

package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.PodcastSeries;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.PodcastSeriesRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.List;

@RestController
public class ActivateUser {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private BooksRepository booksRepository;

    @Autowired
    private PodcastSeriesRepository podcastSeriesRepository;

    @RequestMapping(value = "/activateUser", method = RequestMethod.POST)
    public Users activateUser(@RequestParam Long userId){
        Users user = usersRepository.findUsersById(userId);
        user.setStatus(1);

        List<Books> booksList = booksRepository.findByUser_FullNameContainsIgnoreCaseAndPublishStatus(user.getFullName(), 0);
        for (Books book : booksList) {
            book.setPublishStatus(1);
        }

        List<PodcastSeries> podcastSeriesList = podcastSeriesRepository.findByUser_FullNameContainsIgnoreCaseAndPublishStatus(user.getFullName(), 0);
        for (PodcastSeries podcastSeries : podcastSeriesList) {
            podcastSeries.setPublishStatus(1);
        }

        booksRepository.saveAll(booksList);
        podcastSeriesRepository.saveAll(podcastSeriesList);

        return usersRepository.save(user);
    }
}

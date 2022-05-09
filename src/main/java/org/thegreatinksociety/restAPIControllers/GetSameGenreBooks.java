package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.BooksRepository;

import java.util.List;

@RestController
public class GetSameGenreBooks {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/getSameGenreBooks", method = RequestMethod.POST)
    public List<Books> getSameGenreBooks(@RequestParam Long genreId) {
        Pageable limitedData = PageRequest.of(0, 4, Sort.by("numberOfLikes").descending());
        int publishStatus = 1;

        return booksRepository.findByGenre_IdAndPublishStatusOrderByNumberOfLikesDesc(genreId, limitedData, publishStatus);
    }
}

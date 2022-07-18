package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
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
public class GetMostPopularBooks {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/getMostPopularBooks", method = RequestMethod.POST)
    public List<Books> getMostPopularBooks(){
        Pageable limitedData = PageRequest.of(0, 3, Sort.by("numberOfLikes").descending());
        int publishStatus = 1;

        return booksRepository.findByPublishStatusOrderByNumberOfLikesDesc(limitedData, publishStatus);
    }

}

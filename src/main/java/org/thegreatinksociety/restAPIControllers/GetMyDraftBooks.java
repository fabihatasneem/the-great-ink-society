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
public class GetMyDraftBooks {

    @Autowired
    private BooksRepository booksRepository;

    @RequestMapping(value = "/getMyDraftBooks", method = RequestMethod.POST)
    public List<Books> getMyDraftBooks(@RequestParam Long userId){

        return booksRepository.findBooksByDraftChapter();
    }
}

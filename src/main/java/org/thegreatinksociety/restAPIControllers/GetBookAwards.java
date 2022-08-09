package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Awards;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.repositories.AwardsRepository;
import org.thegreatinksociety.repositories.BooksRepository;

import java.util.List;

@RestController
public class GetBookAwards {

    @Autowired
    private AwardsRepository awardsRepository;

    @RequestMapping("/getBookAwards")
    public List<Awards> getBookAwards(@RequestParam Long bookId){
        List<Awards> awardList = awardsRepository.findAwardByWinnerBookId(bookId);
        return awardList;
    }
}

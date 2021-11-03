package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.CommentsOfBooks;
import org.thegreatinksociety.repositories.CommentsOfBooksRepository;

import java.util.List;

@RestController
public class GetCommentsOfChapter {
    @Autowired
    private CommentsOfBooksRepository commentsOfBooksRepository;

    @RequestMapping(value = "/getCommentsOfChapter", method = RequestMethod.POST)
    public List<CommentsOfBooks> getCommentsOfChapter(@RequestParam Long chapterId, @RequestParam Long bookId) {

        return commentsOfBooksRepository.findByChapter_IdAndBook_Id(chapterId, bookId);
    }
}

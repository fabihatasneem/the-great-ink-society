package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.BookLikes;
import org.thegreatinksociety.entities.Books;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.BookLikesRepository;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.Date;

@RestController
public class LikeUnlikeBook {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private BooksRepository booksRepository;
    @Autowired
    private BookLikesRepository bookLikesRepository;

    @RequestMapping(value = "/likeUnlikeBook", method = RequestMethod.POST)
    public BookLikes likeUnlikeBook(@RequestParam Long userId, @RequestParam Long bookId) {
        Users user = usersRepository.findUsersById(userId);
        Books book = booksRepository.findBooksById(bookId);
        BookLikes like = bookLikesRepository.findByUserAndBook(user, book);
        int likeCount = book.getNumberOfLikes();
        System.out.println(likeCount);
        if(like == null) {
            like = new BookLikes();
            like.setUser(user);
            like.setBook(book);
            like.setStatus(1);
            likeCount++;
        } else{
            if(like.getStatus() == 0){
                like.setStatus(1);
                likeCount++;
            } else {
                like.setStatus(0);
                likeCount--;
            }
        }
        book.setNumberOfLikes(likeCount);
        bookLikesRepository.save(like);
        return like;
    }
}

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
import org.thegreatinksociety.entities.FollowersAndFollowings;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.BooksRepository;
import org.thegreatinksociety.repositories.FollowersAndFollowingsRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GetMyFollowingsBooks {

    @Autowired
    private BooksRepository booksRepository;
    @Autowired
    private FollowersAndFollowingsRepository followersAndFollowingsRepository;
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getMyFollowingsBooks", method = RequestMethod.POST)
    public List<Books> getMyFollowingsBooks(@RequestParam Long userId){
        Pageable limitedData = PageRequest.of(0, 4, Sort.by("numberOfLikes").descending());
        int publishStatus = 1;

        List<Books> bookList = new ArrayList<>();
        List<FollowersAndFollowings> followingIdList = followersAndFollowingsRepository.findByFollowerId(userId);
        List<Users> followingUserList = new ArrayList<>();
        for(FollowersAndFollowings i : followingIdList){
            followingUserList.add(usersRepository.findUsersById(i.getFollowingId()));
        }
        for(Users u : followingUserList){
            List<Books> books = booksRepository.findByUser_IdAndPublishStatusOrderByNumberOfLikesDesc(u.getId(), publishStatus);
            bookList.addAll(books);
        }
        return bookList;
    }

}

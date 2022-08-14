package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.BookLikes;
import org.thegreatinksociety.entities.ChapterLikeHistory;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.ChapterLikeHistoryRepository;
import org.thegreatinksociety.repositories.ChaptersRepository;
import org.thegreatinksociety.repositories.UsersRepository;

@RestController
public class ChapterLike {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private ChaptersRepository chaptersRepository;
    @Autowired
    private ChapterLikeHistoryRepository chapterLikeHistoryRepository;

    @RequestMapping(value = "/chapterLike", method = RequestMethod.POST)
    public boolean likeUnlikeBook(@RequestParam Long userId, @RequestParam Long chapterId) {
        Users user = usersRepository.findUsersById(userId);
        Chapters chapter = chaptersRepository.findChaptersById(chapterId);
        ChapterLikeHistory chapterLike = chapterLikeHistoryRepository.findByUser_IdAndChapters_Id(userId, chapterId);

        if (chapterLike == null) {
            ChapterLikeHistory chapterLikeHistory = new ChapterLikeHistory();

            chapter.setNumberOfLikes(chapter.getNumberOfLikes() + 1);
            chaptersRepository.save(chapter);

            chapterLikeHistory.setChapters(chapter);
            chapterLikeHistory.setUser(user);

            chapterLikeHistoryRepository.save(chapterLikeHistory);

            return true;
        } else {
            return false;
        }

    }
}

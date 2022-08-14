package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.repositories.ChaptersRepository;

import javax.servlet.http.HttpServletResponse;

@RestController
public class UnpublishChapter {

    @Autowired
    private ChaptersRepository chaptersRepository;

    @RequestMapping(value = "/unpublishChapter", method = RequestMethod.POST)
    public boolean unpublishChapter(@RequestParam Long chapterId, HttpServletResponse response){
        Chapters chapter = chaptersRepository.findChaptersById(chapterId);

        chapter.setStatus(0);
        chapter.getBook().setCompletionStatus(0);
        int previousChapters = chapter.getBook().getNumberOfChapters();
        chapter.getBook().setNumberOfChapters(previousChapters-1);

        Chapters draftedChapter = chaptersRepository.save(chapter);

        return draftedChapter.getStatus() == 0;
    }
}

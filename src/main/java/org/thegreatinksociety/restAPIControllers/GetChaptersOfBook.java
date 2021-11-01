package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.repositories.ChaptersRepository;

import java.util.List;

@RestController
public class GetChaptersOfBook {

    @Autowired
    private ChaptersRepository chaptersRepository;

    @RequestMapping(value = "/getChaptersofBook", method = RequestMethod.POST)
    public List<Chapters> getChaptersOfBook(@RequestParam Long bookId){

        return chaptersRepository.findByBook_Id(bookId);
    }

}

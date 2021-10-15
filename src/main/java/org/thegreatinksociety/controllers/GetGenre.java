package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.repositories.GenreRepository;

import java.util.List;

@RestController
public class GetGenre {

    @Autowired
    private GenreRepository genreRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/getGenre")
    public List<Genre> getGenre(){
        return genreRepository.findAll();
    }
}

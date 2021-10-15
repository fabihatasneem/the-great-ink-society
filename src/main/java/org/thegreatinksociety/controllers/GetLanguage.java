package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Language;
import org.thegreatinksociety.repositories.LanguageRepository;

import java.util.List;

@RestController
public class GetLanguage {
    @Autowired
    private LanguageRepository languageRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/getLanguage")
    public List<Language> getLanguage() {
        return languageRepository.findAll();
    }
}

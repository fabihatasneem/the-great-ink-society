package org.thegreatinksociety.restAPIControllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Competitions;
import org.thegreatinksociety.repositories.CompetitionsRepository;

import java.util.Date;
import java.util.List;

@RestController
public class GetUpcomingEvents {

    @Autowired
    private CompetitionsRepository competitionsRepository;

    @RequestMapping(value = "/getUpcomingEvents", method = RequestMethod.GET)
    public List<Competitions> getUpcomingEvents() {
        return competitionsRepository.findCompetitionsByResultDateAfter(new Date());
    }
}

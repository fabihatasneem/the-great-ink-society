package org.thegreatinksociety.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.*;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@Controller
public class EventSubmitController {
    @Autowired
    private CompetitionsRepository competitionsRepository;

    @RequestMapping(value = "/createEvent")
    public void createEvent(HttpServletResponse response, HttpSession session,
                           @RequestParam String new_event_title, @RequestParam Date new_deadline_date,
                            @RequestParam Date new_result_date, @RequestParam Long new_participants,
                            @RequestParam int new_type) throws IOException, ServletException {

        Competitions competition = new Competitions();

        Date today = new Date();

        competition.setCompetitionName(new_event_title);
        competition.setEntryDate(today);
        competition.setDeadlineDate(new_deadline_date);
        competition.setResultDate(new_result_date);
        competition.setNumberOfParticipants(new_participants);
        competition.setType(new_type);

        competitionsRepository.save(competition);
    }

}

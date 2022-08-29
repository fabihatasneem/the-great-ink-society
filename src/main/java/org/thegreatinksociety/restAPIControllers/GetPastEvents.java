package org.thegreatinksociety.restAPIControllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Awards;
import org.thegreatinksociety.entities.Competitions;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.AwardsRepository;
import org.thegreatinksociety.repositories.CompetitionsRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@RestController
public class GetPastEvents {

    @Autowired
    private CompetitionsRepository competitionsRepository;
    @Autowired
    private AwardsRepository awardsRepository;
    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping(value = "/getPastEvents", method = RequestMethod.GET)
    public String getPastEvents() {
        StringBuilder design = new StringBuilder("<div class=\"row\">");
        List<Competitions> competitionsList = competitionsRepository.findCompetitionsByResultDateBefore(new Date());

        for (int i = 0; i < competitionsList.size(); i++) {
            Competitions c = competitionsList.get(i);
            List<Awards> awardsList = awardsRepository.findByCompetition_CompetitionId(c.getCompetitionId());

            design.append("<div class=\"col-md-6\">" +
                    " <div class=\"product-item\" style=\"background-color:white;\">" +
                    "<a href=\"#\">" +
                    "<img src=\"https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fcompetition.webp?alt=media&token=399bb937-c08a-4983-92cb-b31e2a686cee\"" +
                    " alt=\"\" /></a>" +
                    "<div class=\"down-content\">" +
                    "<h3>" + c.getCompetitionName() + "</h3>" +
                    "<hr>" +
                    "<span style=\"font-size: 95%;\">" +
                    " <i class=\"fas fa-calendar\"></i> Event Held On: " +
                    c.getEntryDate() +
                    "</span><br>" );
            for (Awards a : awardsList) {
                Users user = usersRepository.findUsersById(a.getWinnerUserId());
                if (a.getRank() == 1) {
                    design.append("<i class=\"fas fa-award\" style=\"color:goldenrod;\"></i> " +
                            a.getRankName() + " : " + user.getFullName() +
                            "<br>");
                } else if (a.getRank() == 2) {
                    design.append("<i class=\"fas fa-award\" style=\"color:silver\"></i> " +
                            a.getRankName() + " : " + user.getFullName() +
                            "<br>");
                } else if (a.getRank() == 3) {
                    design.append(" <i class=\"fas fa-award\" style=\"color:chocolate;\"></i> " +
                            a.getRankName() + " : " + user.getFullName() +
                            " <br>");
                }
            }

            design.append("</div>" +
                    "</div>" +
                    "</div>");

            if (i % 2 != 0) {
                design.append("</div><div class=\"row\">");
            } else if (i == competitionsList.size() - 1) {
                design.append("</div>");
            }

        }

        return design.toString();
    }
}

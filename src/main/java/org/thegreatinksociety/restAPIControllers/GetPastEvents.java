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
    public HashMap<String, List<?>> getPastEvents() {
        HashMap<String, List<?>> map = new HashMap<>();

        List<Competitions> competitionsList = competitionsRepository.findCompetitionsByResultDateBefore(new Date());
        map.put("competitionsList", competitionsList);
        //JSONObject obj=new JSONObject();

        for(Competitions c : competitionsList) {

            String jsonString = String.valueOf(c);
            System.out.println(jsonString);
            List<Awards> awardsList = awardsRepository.findByCompetition_CompetitionId(c.getCompetitionId());
            map.put("awardsList", awardsList);
            List<Users> usersList = new ArrayList<>();
            for(Awards a : awardsList){
                usersList.add(usersRepository.findUsersById(a.getWinnerUserId()));
            }
            map.put("usersList", usersList);
        }
        return map;
    }
}

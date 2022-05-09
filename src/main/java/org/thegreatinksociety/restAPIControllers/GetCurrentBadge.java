package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Badges;
import org.thegreatinksociety.repositories.BadgesRepository;

public class GetCurrentBadge {
    @Autowired
    private BadgesRepository badgesRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/getCurrentBadge")
    public Badges getCurrentBadge(@RequestParam Long badgeId) {
        return badgesRepository.findBadgesById(badgeId);
    }
}

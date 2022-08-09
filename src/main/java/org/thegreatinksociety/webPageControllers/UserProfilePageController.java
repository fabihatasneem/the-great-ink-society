package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Awards;
import org.thegreatinksociety.entities.Badges;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.BadgesRepository;
import org.thegreatinksociety.repositories.UsersRepository;

import java.util.List;

@Controller
public class UserProfilePageController {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private BadgesRepository badgesRepository;

    @RequestMapping("/userProfile")
    public String getUserProfilePage(ModelMap model, @RequestParam String username) {

        Users user = usersRepository.findByUserName(username);

        model.addAttribute("userFullName", user.getFullName());
        model.addAttribute("username", user.getUserName());
        model.addAttribute("userId", user.getId());
        model.addAttribute("numberOfAwards", user.getNumberOfAwards());
        model.addAttribute("numberOfBadges", user.getNumberOfBadges());
        model.addAttribute("numberOfFollowers", user.getFollowers());
        model.addAttribute("userBio", user.getBio());
        model.addAttribute("location", user.getLocation());
        model.addAttribute("numberOfFollowings", user.getFollowings());
        model.addAttribute("competitionCount", user.getCompetitions().size());
        model.addAttribute("userBio", user.getBio());
        model.addAttribute("location", user.getLocation());

        Badges currentBadge = badgesRepository.findBadgesById((long) user.getCurrentBadgeId());
        if (currentBadge != null) {
            model.addAttribute("currentBadge", currentBadge.getBadgeName());
        } else {
            model.addAttribute("currentBadge", "N/A");
        }

        String earnedBadgesDesign = "<div class=\"row\">";
        List<Badges> earnedBadges = user.getBadge();
        for (int i = 0; i < earnedBadges.size(); i++) {
            if (i % 2 == 0) {
                earnedBadgesDesign += "<div class=\"col-md-6\">" +
                        "<img src=\"images/badge-image.jpg\" width=\"150px\"/>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + earnedBadges.get(i).getBadgeName() + "</h6>" +
                        "</div>";
            } else {
                earnedBadgesDesign += "<div class=\"col-md-6\">" +
                        "<img src=\"images/badge-image.jpg\" width=\"150px\"/>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + earnedBadges.get(i).getBadgeName() + "</h6>" +
                        "</div>" +
                        "<br/>";
            }
        }
        earnedBadgesDesign += "</div>";
        model.addAttribute("earnedBadgesDesign", earnedBadgesDesign);

        String achievementDesign = "<div class=\"row\">";
        List<Awards> achievement = user.getAward();
        for (int i = 0; i < achievement.size(); i++) {
            if (i % 2 == 0) {
                achievementDesign += "<div class=\"col-md-6\">" +
                        "<img src=\"images/trophy.png\" width=\"150px\"/>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + achievement.get(i).getCompetition().getCompetitionName() + "</h6>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + achievement.get(i).getRankName() + "</h6>" +
                        "</div>";
            } else {
                achievementDesign += "<div class=\"col-md-6\">" +
                        "<img src=\"images/trophy.png\" width=\"150px\"/>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + achievement.get(i).getCompetition().getCompetitionName() + "</h6>" +
                        "<h6 style=\"font-size: 12px; text-align: center; padding-top: 8px;\">" + achievement.get(i).getRankName() + "</h6>" +"</div>" +
                        "<br/>";
            }
        }
        achievementDesign += "</div>";
        model.addAttribute("achievementDesign", achievementDesign);

        return "user";
    }

}

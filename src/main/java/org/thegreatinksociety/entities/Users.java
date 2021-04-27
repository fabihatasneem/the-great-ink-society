package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Users {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;//(1)

    @Column(nullable = false)
    private String userName;//(2)

    @Column(nullable = false)
    private String fullName;//(3)

    private String email;//(4)
    private String mobile;//(5)
    private String location;//(6)

    @Column(nullable = false)
    private String password;//(7)

    private String bio;//(8)
    private String profilePicName;//(9)
    private String profilePicLink;//(10)

    @Column(nullable = false)
    private String gender;//(11)

    @Temporal(TemporalType.DATE)
    private Date dob;//(12)

    private int followers;//(13)
    private int followings;//(14)
    private int subscribers;//(15)

    private int writingLikes;//(16)
    private int podcastLikes;//(17)
    private int numberOfBookLists;//(18)
    private int numberOfPodcastLists;//(19)
    private int numberOfBooks;//(20)
    private int numberOfPodcasts;//(21)
    private int numberOfChapters;//(22)
    private int numberOfEpisodes;//(23)

    @OneToMany (targetEntity = Badges.class)//This will create a separate table
    private List<Badges> badge;

    private int numberOfBadges;//(24)
    private int currentBadgeId;//(25)

    @OneToMany(targetEntity = Competitions.class)//This will create a separate table
    private List<Competitions> competitions;

    private int numberOfParticipatedCompetitions;//(26)

    @OneToMany(targetEntity = Awards.class)//This will create a separate table
    private List<Awards> award;

    private int numberOfAwards;//(27)

    @Column(nullable = false) @Temporal(TemporalType.DATE)
    private Date joinedDate;//28

}

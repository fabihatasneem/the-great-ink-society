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
    private Long id;

    @Column(nullable = false)
    private String userName;

    @Column(nullable = false)
    private String fullName;

    private String email;
    private String mobile;
    private String location;

    @Column(nullable = false)
    private String password;

    private String bio;
    private String profilePicName;
    private String profilePicLink;

    @Column(nullable = false)
    private String gender;

    @Temporal(TemporalType.DATE)
    private Date dob;

    private int followers;
    private int followings;

    private int writingLikes;
    private int podcastLikes;

    @ManyToOne
    private BookLists bookLists;
    private int numberOfBookLists;

//    @ManyToOne
//    private PodcastLists podcastLists;
    private int numberOfPodcastLists;

//    @ManyToOne
//    private Books books;
    private int numberOfBooks;

//    @ManyToOne
//    private Podcasts podcasts;
    private int numberOfPodcasts;

//    @ManyToOne
//    private Chapters chapters;
    private int numberOfChapters;

//    @ManyToOne
//    private Episodes episodes;
    private int numberOfEpisodes;

    @OneToMany (mappedBy = "user")
    private List<Badges> badge;
    private int numberOfBadges;
    private int currentBadgeId;

    @ManyToOne
    private Competitions competitions;
    private int numberOfParticipatedCompetitions;

    @ManyToOne
    private Awards award;
    private int numberOfAwards;

    @Column(nullable = false) @Temporal(TemporalType.DATE)
    private Date joinedDate;

}

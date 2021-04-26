package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

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

    @ManyToOne
    private Badges badge;

    private int followers;
    private int followings;
    private int podcastLikes;
    private int writingLikes;
    private int numberOfBooks;
    private int numberOfPodcasts;
    private int numberOfEpisodes;
    private int numberOfChapters;
    private int numberOfBadges;

    @Column(nullable = false) @Temporal(TemporalType.DATE)
    private Date joined;

}

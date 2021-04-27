package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Episodes {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @OneToOne
    private Users user;

    @ManyToOne
    private PodcastSeries podcastSeries;

    private int status; //0-> Unpublished 1-> Published
    private String episodeName;
    private String audioFileName;
    private String audioFileLink;
    private int numberOfLikes;
    private int numberOfComments;
    private int audioLength;
    private int totalViews;
}

package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class PodcastSeries {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;


    @ManyToOne
    private Users user;

    private String seriesName;

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date creationDate;

    @ManyToOne
    private Genre genre;

    @ManyToOne
    private Language language;

    @Column(length = 1000)
    private String description;
    private int publishStatus; //0-> Unpublished 1-> Published
    private int completionStatus; //0->Incomplete  1-> Completed
    private int numberOfLikes;
    private int numberOfComments;
    private int numberOfEpisodes;
    private int totalAudioLength;
    private int totalViews;
    private String coverPhotoName;
    private String coverPhotoLink;
}

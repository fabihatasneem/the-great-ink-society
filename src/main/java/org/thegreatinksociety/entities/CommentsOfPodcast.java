package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class CommentsOfPodcast {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long commentId;

    @Column(length = 500)
    private String commentDescription;
    private int userId;
    private int episodeId;
    private int podcastId;

    @Temporal(TemporalType.DATE)
    private Date commentDate;
}

package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class ListeningHistory {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne
    private Users user;

    @ManyToOne
    private PodcastSeries podcastSeries;

    @ManyToOne
    private Episodes episodes;

    @Temporal(TemporalType.TIMESTAMP)
    private Date lastlisteningTime;

    private int status; //0 -> Liked, 1 -> Not Liked
    private int listenedAudioLength;
}

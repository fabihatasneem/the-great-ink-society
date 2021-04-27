package org.thegreatinksociety.entities;

import jdk.jfr.Enabled;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Enabled @Data @NoArgsConstructor @AllArgsConstructor
public class PodcastListDetails {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne
    private PodcastLists podcastList;

    @OneToOne
    private PodcastSeries podcastSeries;

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date addedDate;
}

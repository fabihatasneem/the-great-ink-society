package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Reports {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne//One report will have one user, not multiple
    private Users user;

    @Column(nullable = false)
    private String description;

    private String referenceLink;

    @ManyToOne
    private Users convict;

    @ManyToOne
    private Books books;
    @ManyToOne
    private Chapters chapters;
    @ManyToOne
    private PodcastSeries podcastSeries;
    @ManyToOne
    private Episodes episodes;

    private Date date;
    private int solveStatus;
}

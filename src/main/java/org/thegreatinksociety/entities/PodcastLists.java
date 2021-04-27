package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class PodcastLists {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @OneToOne
    private Users user;

    @Column(nullable = false)
    private String listName;

    private int numberOfPodcasts;
    private int privacyStatus; //0->Private 1->Public

    @Temporal(TemporalType.DATE)
    private Date creationDate;
}

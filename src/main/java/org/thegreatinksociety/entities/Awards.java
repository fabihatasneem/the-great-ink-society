package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Awards {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne
    private Competitions competition;

    @Column(nullable = false)
    private String rank;

    @Column(nullable = false)
    private String rankName;

    private int winnerUserId; //Default 0
    private int winnerBookId; //Default 0 Changes with type
    private int winnerPodcastId; //Default 0 Changes with type
}

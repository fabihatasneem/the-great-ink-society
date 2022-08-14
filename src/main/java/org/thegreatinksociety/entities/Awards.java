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
    private int rank;

    @Column(nullable = false)
    private String rankName;

    private Long winnerUserId; //Default 0
    private Long winnerBookId; //Default 0 Changes with type
    private Long winnerPodcastId; //Default 0 Changes with type
}

package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Competitions {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long competitionId;

    @Column(nullable = false)
    private String competitionName;

    private Long numberOfParticipants;
    private int type; //1-> Writing 2->Podcasting

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date entryDate;

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date deadlineDate;

    @Temporal(TemporalType.DATE)
    private Date resultDate;
}

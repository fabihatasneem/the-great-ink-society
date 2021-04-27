package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Competitions {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String competitionName;
    private Long numberOfParticipants;

    @Temporal(TemporalType.DATE)
    private Date entryDate;
    @Temporal(TemporalType.DATE)
    private Date deadlineDate;
    @Temporal(TemporalType.DATE)
    private Date resultDate;
}

package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class ReadingHistory {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne
    private Users user;

    @ManyToOne
    private Books book;

    @ManyToOne
    private Chapters chapter;

    @Temporal(TemporalType.TIMESTAMP)
    private Date lastReadingTime;

    private int status; //0 -> Liked, 1 -> Not Liked
    private int lastReadingPage;
}

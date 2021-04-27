package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class BookLists {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String listName;

    @ManyToOne
    private Books books;

    private int listType;

    private int numberOfBooks;
    private int privacyStatus;

    @Temporal(TemporalType.DATE)
    private Date creationDate;
}

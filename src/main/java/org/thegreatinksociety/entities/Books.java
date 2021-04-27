package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Books {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @OneToMany
    private List<Users> user;

    @OneToMany
    private List<BookLists> bookList;

    private String name;

    @Temporal(TemporalType.DATE)
    private Date creationDate;

    private int genreId;
    private int languageId;
    private int publishStatus;
    private int completionStatus;
    private int numberOfLikes;
    private int numberOfComments;
    private int numberOfChapters;
    private int pages;
    private int views;

    private String coverPhotoName;
    private String coverPhotoLink;
}

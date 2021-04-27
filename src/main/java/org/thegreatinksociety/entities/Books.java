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

    @OneToOne//One book will have one user, not multiple
    private Users user;

    @Column(nullable = false)
    private String bookName;

    @Temporal(TemporalType.DATE)
    private Date creationDate;

    @ManyToOne
    private Genre genre;

    @ManyToOne
    private Language language;

    private int publishStatus;
    private int completionStatus; //0->Incomplete  1-> Completed
    private int numberOfLikes;
    private int numberOfComments;
    private int numberOfChapters;
    private int totalPages;
    private int totalViews;
    private String coverPhotoName;
    private String coverPhotoLink;
}

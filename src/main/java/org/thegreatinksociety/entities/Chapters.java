package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Chapters {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @OneToOne
    private Users user;

    @ManyToOne
    private Books book;

    private int status; //0-> Unpublished 1-> Published

    @Column(nullable = false)
    private String chapterName;

    private String textFileName;
    private String textFileLink;
    private int numberOfLikes;
    private int numberOfComments;
    private int numberOfPages;
    private int totalViews;
}

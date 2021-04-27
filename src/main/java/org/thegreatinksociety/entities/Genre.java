package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Genre {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String name;
    private int numberOfBooks;
    private int numberOfPodcasts;
}

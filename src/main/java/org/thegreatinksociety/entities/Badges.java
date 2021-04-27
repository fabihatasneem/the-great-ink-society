package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Badges {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(nullable = false)
    private String badgeName;

    private int minLikesToEarn;
    private int numberOfUsersEarned;
    private int numberOfUsersNow;
}

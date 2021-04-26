package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Badges {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String badgeName;
    private int minVotesToEarn;
    private int numberOfUsersEarned;
    private int numberOfUsersNow;
}

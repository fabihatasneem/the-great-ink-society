package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class FollowersAndFollowings {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(nullable = false)
    private int followerId;

    @Column(nullable = false)
    private int followingId;

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date dateFollowed;

}

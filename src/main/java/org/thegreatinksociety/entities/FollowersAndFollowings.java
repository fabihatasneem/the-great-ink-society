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

    private int followerId;
    private int followingId;

    @Temporal(TemporalType.DATE)
    private Date dateFollowed;

}

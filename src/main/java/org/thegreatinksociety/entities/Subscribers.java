package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Subscribers {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(nullable = false)
    private int subscriberId;

    @Column(nullable = false)
    private int subscribedToId;

    @Temporal(TemporalType.DATE) @Column(nullable = false)
    private Date subscriptionDate;

}

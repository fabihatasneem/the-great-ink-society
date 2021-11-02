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
    private Long subscriberId;

    @Column(nullable = false)
    private Long subscribedToId;

    @Temporal(TemporalType.DATE)
    private Date subscriptionDate;

}

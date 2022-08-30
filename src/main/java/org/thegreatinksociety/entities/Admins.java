package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class Admins {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;//(1)

    @Column(nullable = false)
    private String adminUserName;//(2)

    @Column(nullable = false)
    private String fullName;//(3)

    @Column(nullable = false)
    private String email;//(4)

    @Column(nullable = false)
    private String password;//(5)

}

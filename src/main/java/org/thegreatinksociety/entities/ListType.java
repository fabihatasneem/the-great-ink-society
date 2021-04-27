package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity @Data @NoArgsConstructor @AllArgsConstructor
public class ListType {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String typeName;
}

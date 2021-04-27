package org.thegreatinksociety.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity @Data
@NoArgsConstructor
@AllArgsConstructor
public class Language {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String languageName;
}

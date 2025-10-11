package org.myproject.demo.vo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.*;
import lombok.experimental.SuperBuilder;

import static jakarta.persistence.GenerationType.IDENTITY;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@ToString(callSuper = true)
public class Team {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private int id;
    private String teamLogo;
    private String teamName;
    private String teamHomepage;
}

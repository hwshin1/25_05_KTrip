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
    private String team_logo;
    private String team_name;
    private String team_homepage;

    public Team(String team_logo, String team_name, String team_homepage) {
        this.team_logo = team_logo;
        this.team_name = team_name;
        this.team_homepage = team_homepage;
    }
}

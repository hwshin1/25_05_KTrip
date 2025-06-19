package org.myproject.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Team {
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

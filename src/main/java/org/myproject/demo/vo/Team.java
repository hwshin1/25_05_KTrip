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
    private String team_location;
}

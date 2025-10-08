package org.myproject.demo.repository;

import org.myproject.demo.vo.Team;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CrawlingRepository extends JpaRepository<Team, Long> {

    int webCrawling(String team_logo, String team_name, String team_homepage);

    boolean existsTeam(String team_name, String team_homepage);

    int countTeams();
}

package org.myproject.demo.repository;

import org.myproject.demo.vo.Team;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TeamRepository extends JpaRepository<Team, Long> {
    Long findByTeamName(String teamName);
}

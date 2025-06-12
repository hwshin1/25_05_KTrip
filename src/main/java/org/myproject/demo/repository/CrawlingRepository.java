package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.Team;

import java.util.List;

@Mapper
public interface CrawlingRepository {
    List<Team> teamList();

    Team teamListLogo(int id);
}

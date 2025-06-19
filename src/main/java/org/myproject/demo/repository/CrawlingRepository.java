package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CrawlingRepository {

    int webCrawling(String team_logo, String team_name, String team_homepage);

    boolean existsTeam(String team_name, String team_homepage);
}

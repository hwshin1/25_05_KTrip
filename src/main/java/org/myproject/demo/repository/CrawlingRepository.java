package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.Team;

@Mapper
public interface CrawlingRepository {

    Team teamListLogo(int id);
}

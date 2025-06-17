package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.Board;

@Mapper
public interface BoardRepository {
    Board getBoardById(int boardId);
}

package org.myproject.demo.repository;

import org.myproject.demo.vo.Board;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardRepository extends JpaRepository<Board, Integer> {
    Board getBoardById(int boardId);
}

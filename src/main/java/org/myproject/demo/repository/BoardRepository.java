package org.myproject.demo.repository;

import org.myproject.demo.vo.Board;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardRepository extends JpaRepository<Board, Long> {
    Board getBoardById(int boardId);
}

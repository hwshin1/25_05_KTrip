package org.myproject.demo.service;

import org.myproject.demo.repository.BoardRepository;
import org.myproject.demo.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    
    @Autowired
    private BoardRepository boardRepository;

    public Board getBoardById(int boardId) {
        return boardRepository.getBoardById(boardId);
    }
}

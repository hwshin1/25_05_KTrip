package org.myproject.demo.service;

import lombok.RequiredArgsConstructor;
import org.myproject.demo.repository.BoardRepository;
import org.myproject.demo.vo.Board;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class BoardService {

    private final BoardRepository boardRepository;

    public Board getBoardById(int boardId) {
        return boardRepository.getBoardById(boardId);
    }
}

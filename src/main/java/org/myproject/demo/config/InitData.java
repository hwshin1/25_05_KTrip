package org.myproject.demo.config;

import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import org.myproject.demo.repository.BoardRepository;
import org.myproject.demo.vo.Board;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class InitData {

    private final BoardRepository boardRepository;

    @PostConstruct
    public void init() {

        Board boardNotice = Board.builder()
                .code("NOTICE")
                .name("공지사항")
                .build();

        Board boardReview = Board.builder()
                .code("REVIEW")
                .name("후기")
                .build();

        Board boardQnA = Board.builder()
                .code("QnA")
                .name("질의응답")
                .build();

        if (boardRepository.count() == 0) {
            boardRepository.save(boardNotice);
            boardRepository.save(boardReview);
            boardRepository.save(boardQnA);
        }
    }
}

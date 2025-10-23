package org.myproject.demo.repository;

import org.myproject.demo.vo.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    int countByBoardId(int boardId);

    Page<Review> findByBoardId(int boardId, Pageable pageable);

    Page<Review> findByBoardIdAndTitleContaining(int boardId, String searchKeyword, Pageable pageable);

    Page<Review> findByBoardIdAndBodyContaining(int boardId, String searchKeyword, Pageable pageable);

    Page<Review> findByBoardIdAndTitleContainingOrBoardIdAndBodyContaining(int boardId, String searchKeyword, int boardId1, String searchKeyword1, Pageable pageable);
    /* mybatis 방식
    int doWrite(int userId, String title, String body, String boardId);

    List<Review> getReviewList();

    Review getReviewById(int id);

    void doModify(int id, String title, String body);

    void doDelete(int id);

    int getLastInsertId();

    Review getForPrintReview(int id);

    int getReviewCount(int boardId, String searchKeywordTypeCode, String searchKeyword);

    List<Review> getForPrintReviews(int boardId, int limitFrom, int limitTake, String searchKeywordTypeCode, String searchKeyword);
     */
}

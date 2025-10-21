package org.myproject.demo.repository;

import org.myproject.demo.vo.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    int getReviewCount(int boardId, String searchKeywordTypeCode, String searchKeyword);

    List<Review> getForPrintReviews(int boardId, int limitFrom, int limitTake, String searchKeywordTypeCode, String searchKeyword);

    Review getForPrintReview(Long id);
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

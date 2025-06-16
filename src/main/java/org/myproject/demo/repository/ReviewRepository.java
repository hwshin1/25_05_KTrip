package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.Review;

import java.util.List;

@Mapper
public interface ReviewRepository {

    int doWrite(int userId, String title, String body);

    List<Review> getReviewList();

    Review getReviewById(int id);

    void doModify(int id, String title, String body);

    void doDelete(int id);

    int getLastInsertId();

    Review getForPrintReview(int id);
}

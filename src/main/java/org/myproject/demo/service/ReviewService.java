package org.myproject.demo.service;

import org.myproject.demo.repository.ReviewRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    public ResultData doWrite(int userId, String title, String body) {
        reviewRepository.doWrite(userId, title, body);

        int id = reviewRepository.getLastInsertId();

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 등록되었습니다.", id), "등록된 리뷰의 id", id);
    }

    public List<Review> getReviewList() {
        return reviewRepository.getReviewList();
    }

    public Review getReviewById(int id) {
        return reviewRepository.getReviewById(id);
    }

    public void doModify(int id, String title, String body) {
        reviewRepository.doModify(id, title, body);
    }

    public void doDelete(int id) {
        reviewRepository.doDelete(id);
    }

    public Review getForPrintReview(int loginedUserId, int id) {
        Review review = reviewRepository.getForPrintReview(id);

        controlForPrintData(loginedUserId, review);

        return review;
    }

    private void controlForPrintData(int loginedUserId, Review review) {
        if (review == null) {
            return;
        }

        ResultData userCanModifyRd = userCanModify(loginedUserId, review);
        review.setUserCanModify(userCanModifyRd.isSuccess());

        ResultData userCanDeleteRd = userCanDelete(loginedUserId, review);
        review.setUserCanDelete(userCanDeleteRd.isSuccess());
    }

    public ResultData userCanModify(int loginedUserId, Review review) {
        if (review.getUserId() != loginedUserId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 수정 권한 없음", review.getId()));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 수정되었습니다.", review.getId()));
    }

    public ResultData userCanDelete(int loginedUserId, Review review) {
        if (review.getUserId() != loginedUserId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 삭제 권한 없음", review.getId()));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 삭제 되었습니다", review.getId()));
    }
}

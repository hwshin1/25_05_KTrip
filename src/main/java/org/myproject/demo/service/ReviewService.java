package org.myproject.demo.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.myproject.demo.repository.ReviewRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Review;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;

    public ResultData doWrite(int memberId, String title, String body, String boardId) {
        // mybatis 방식
        // reviewRepository.doWrite(userId, title, body, boardId);

        // 현재 방식
        Review review = Review.builder()
                .memberId(memberId)
                .title(title)
                .body(body)
                .boardId(Integer.parseInt(boardId))
                .build();

        reviewRepository.save(review);

        Optional<Review> id = reviewRepository.findById(review.getId());

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 등록되었습니다.", id), "등록된 리뷰의 id", id);
    }

    public List<Review> getReviewList() {
        return reviewRepository.findAll();
    }

    public Optional<Review> getReviewById(long id) {
        return reviewRepository.findById(id);
    }

    @Transactional
    public void doModify(long id, String title, String body) {
        Review updateReview = reviewRepository.findById(id).orElse(null);

        if (updateReview != null) {
            updateReview.setTitle(title);
            updateReview.setBody(body);
        } else {
            log.error("{}번 리뷰가 없습니다.", id);
        }
    }

    public void doDelete(long id) {
        reviewRepository.deleteById(id);
    }

    /*
    public Review getForPrintReview(int loginedUserId, int id) {
        Review review = reviewRepository.getForPrintReview(id);

        controlForPrintData(loginedUserId, review);

        return review;
    }

    private void controlForPrintData(int loginedUserId, Optional<Review> review) {
        if (review.isEmpty()) {
            return;
        }

        ResultData userCanModifyRd = userCanModify(loginedUserId, review);
        review.setUserCanModify(userCanModifyRd.isSuccess());

        ResultData userCanDeleteRd = userCanDelete(loginedUserId, review);
        review.setUserCanDelete(userCanDeleteRd.isSuccess());
    }

    public ResultData userCanModify(int loginedUserId, Optional<Review> review) {
        if (review.getUserId() != loginedUserId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 수정 권한 없음", review));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 수정되었습니다.", review));
    }

    public ResultData userCanDelete(int loginedUserId, Optional<Review> review) {
        if (review.get().getId() != loginedUserId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 삭제 권한 없음", review));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 삭제 되었습니다", review));
    }

    public int getReviewCount(int boardId, String searchKeywordTypeCode, String searchKeyword) {
        return reviewRepository.getReviewCount(boardId, searchKeywordTypeCode, searchKeyword);
    }

    public List<Review> getForPrintReviews(int boardId, int itemsPage, int page, String searchKeywordTypeCode, String searchKeyword) {
        int limitFrom = (page - 1) * itemsPage;
        int limitTake = itemsPage;

        return reviewRepository.getForPrintReviews(boardId, limitFrom, limitTake, searchKeywordTypeCode, searchKeyword);
    }
     */
}

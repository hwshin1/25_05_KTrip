package org.myproject.demo.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.myproject.demo.repository.ReviewRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

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

        Long id = review.getId();

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 등록되었습니다.", id), "등록된 리뷰의 id", id);
    }

    @Transactional
    public void doModify(Long id, String title, String body) {
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

    public Review getForPrintReview(Long loginedMemberId, Long id) {
        Review review = reviewRepository.findById(id).orElse(null);

        if (review != null) controlForPrintData(loginedMemberId, review);

        return review;
    }

    private void controlForPrintData(Long loginedMemberId, Review review) {
        if (review.getId() == null) {
            return;
        }

        ResultData userCanModifyRd = userCanModify(loginedMemberId, review);
        review.setUserCanModify(userCanModifyRd.isSuccess());

        ResultData userCanDeleteRd = userCanDelete(loginedMemberId, review);
        review.setUserCanDelete(userCanDeleteRd.isSuccess());
    }

    public ResultData userCanModify(Long loginedMemberId, Review review) {
        if (review.getId() != loginedMemberId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 수정 권한 없음", review));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 수정되었습니다.", review));
    }

    public ResultData userCanDelete(Long loginedMemberId, Review review) {
        if (review.getId() != loginedMemberId) {
            return ResultData.from("F-A", Ut.f("%d번 리뷰에 대한 삭제 권한 없음", review));
        }

        return ResultData.from("S-1", Ut.f("%d번 리뷰가 삭제 되었습니다", review));
    }

    public int getReviewCount(int boardId) {
        return reviewRepository.countByBoardId(boardId);
    }

    public Page<Review> getForPrintReviews(int boardId, int itemsPage, int page, String searchKeywordTypeCode, String searchKeyword) {
        Pageable pageable = PageRequest.of(page - 1, itemsPage);

        if (searchKeyword == null || searchKeyword.isBlank()) {
            return reviewRepository.findByBoardId(boardId, pageable);
        }

        switch (searchKeywordTypeCode) {
            case "title":
                return reviewRepository.findByBoardIdAndTitleContaining(boardId, searchKeyword, pageable);
            case "body":
                return reviewRepository.findByBoardIdAndBodyContaining(boardId, searchKeyword, pageable);
            case "title,body":
                return reviewRepository.findByBoardIdAndTitleContainingOrBoardIdAndBodyContaining(
                        boardId, searchKeyword, boardId, searchKeyword, pageable);
            default:
                return reviewRepository.findByBoardId(boardId, pageable);
        }
    }
}

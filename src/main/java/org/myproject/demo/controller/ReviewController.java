package org.myproject.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.myproject.demo.interceptor.BeforeInterceptor;
import org.myproject.demo.service.BoardService;
import org.myproject.demo.service.ReviewService;
import org.myproject.demo.service.MemberService;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Controller
public class ReviewController {

    @Autowired
    private BeforeInterceptor beforeInterceptor;

    @Autowired
    private Rq rq;

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private BoardService boardService;

    @Autowired
    private MemberService memberService;

    @RequestMapping("/review/list")
    public String reviewList(HttpServletRequest req, Model model, @RequestParam(defaultValue = "2") int boardId, @RequestParam(defaultValue = "1") int page,
                             @RequestParam(defaultValue = "title") String searchKeywordTypeCode,
                             @RequestParam(defaultValue = "") String searchKeyword) throws IOException {
        rq = (Rq) req.getAttribute("rq");

        Board board = boardService.getBoardById(boardId);

        if (board == null) {
            return rq.historyBackOnView("존재하지 않는 게시판");
        }

//        int reviewsCount = reviewService.getReviewCount(boardId, searchKeywordTypeCode, searchKeyword);

//        int itemsPage = 10

//        int pagesCount = (int) Math.ceil(reviewsCount / (double) itemsPage);

//        List<Review> reviews = reviewService.getForPrintReviews(boardId, itemsPage, page, searchKeywordTypeCode, searchKeyword);

//        model.addAttribute("reviews", reviews);
//        model.addAttribute("pagesCount", pagesCount);
//        model.addAttribute("reviewsCount", reviewsCount);
        model.addAttribute("searchKeywordTypeCode", searchKeywordTypeCode);
        model.addAttribute("searchKeyword", searchKeyword);
        model.addAttribute("boardId", boardId);
        model.addAttribute("board", board);
        model.addAttribute("page", page);

        return "review/list";
    }

    @RequestMapping("/review/write")
    public String write(HttpServletRequest req, Model model) {
        rq = (Rq) req.getAttribute("rq");

//        Member member = memberService.getUserById(rq.getLoginedUserId());

//        model.addAttribute("user", member);

        return "review/write";
    }

    @RequestMapping("/review/doWrite")
    @ResponseBody
    public String doWrite(HttpServletRequest req, String title, String body, String boardId) {
        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(title)) {
            return Ut.jsHistoryBack("F-1", Ut.f("제목을 입력하세요."));
        }

        if (Ut.isEmptyOrNull(body)) {
            return Ut.jsHistoryBack("F-2", Ut.f("내용을 입력하세요."));
        }

        if (Ut.isEmptyOrNull(boardId)) {
            return Ut.jsHistoryBack("F-3", Ut.f("게시판을 선택하세요."));
        }

//        Member member = memberService.getUserById(rq.getLoginedUserId());

//        if (member.getAuthLevel() != Member.AUTH_LEVEL_ADMIN && boardId.equals("1")) {
//            return Ut.jsHistoryBack("F-4", Ut.f("공지사항은 관리자만 작성 가능합니다."));
//        }

        ResultData doWriteRd = reviewService.doWrite(Math.toIntExact(rq.getLoginedMemberId()), title, body, boardId);

        int id = (int) doWriteRd.getData1();

        return Ut.jsReplace(doWriteRd.getResultCode(), doWriteRd.getMsg(), "/review/detail?id=" + id);
    }

    @RequestMapping("/review/detail")
    public String getReview(HttpServletRequest req, int id, Model model) {
        rq = (Rq) req.getAttribute("rq");

//        Review review = reviewService.getForPrintReview(rq.getLoginedUserId(), id);

//        model.addAttribute("review", review);

        return "review/detail";
    }

    /*
    @RequestMapping("/review/modify")
    public String modifyReview(HttpServletRequest req, int id, Model model) {
        rq = (Rq) req.getAttribute("rq");

        Review review = reviewService.getForPrintReview(rq.getLoginedUserId(), id);

        if (review == null) {
            return Ut.jsHistoryBack("F-1", Ut.f("%d번 리뷰는 없습니다.", id));
        }

        if (!review.isUserCanModify()) {
            return rq.historyBackOnView(Ut.f("%d번 리뷰에 대한 수정 권한 없음.", review.getId()));
        }

        model.addAttribute("review", review);

        return "review/modify";
    }

    @RequestMapping("/review/doModify")
    @ResponseBody
    public String doModify(HttpServletRequest req, int id, String title, String body) {
        rq = (Rq) req.getAttribute("rq");

        Optional<Review> review = reviewService.getReviewById(id);

        if (review == null) {
            return Ut.jsReplace("F-1" , Ut.f("%d번 리뷰는 없습니다", id), "/review/list");
        }

        ResultData userCanModifyRd = reviewService.userCanModify(rq.getLoginedUserId(), review);

        if (userCanModifyRd.isFail()) {
            return Ut.jsHistoryBack(userCanModifyRd.getResultCode(), userCanModifyRd.getMsg());
        }

        if (userCanModifyRd.isSuccess()) {
            reviewService.doModify(id, title, body);
        }

        return Ut.jsReplace(userCanModifyRd.getResultCode(), userCanModifyRd.getMsg(), "/review/detail?id=" + id);
    }

    @RequestMapping("/review/doDelete")
    @ResponseBody
    public String doDelete(HttpServletRequest req, long id) {
        rq = (Rq) req.getAttribute("rq");

        Optional<Review> opr = reviewService.getReviewById(id);

        if (opr == null) {
            return Ut.jsHistoryBack("F-1" ,Ut.f("%d번 리뷰는 없습니다.", id));
        }

        Review review = opr.get();

        ResultData userCanDeleteRd = reviewService.userCanDelete(rq.getLoginedUserId(), review);

        if (userCanDeleteRd.isFail()) {
            return Ut.jsHistoryBack(userCanDeleteRd.getResultCode(), userCanDeleteRd.getMsg());
        }

        if (userCanDeleteRd.isSuccess()) {
            reviewService.doDelete(id);
        }

        return Ut.jsReplace(userCanDeleteRd.getResultCode(), userCanDeleteRd.getMsg(), "/review/list");
    }
     */
}

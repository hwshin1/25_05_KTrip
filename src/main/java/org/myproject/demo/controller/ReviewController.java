package org.myproject.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.myproject.demo.interceptor.BeforeInterceptor;
import org.myproject.demo.service.ReviewService;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Review;
import org.myproject.demo.vo.Rq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ReviewController {

    private final BeforeInterceptor beforeInterceptor;

    @Autowired
    private Rq rq;

    @Autowired
    private ReviewService reviewService;

    ReviewController(BeforeInterceptor beforeInterceptor) {
        this.beforeInterceptor = beforeInterceptor;
    }

    @RequestMapping("/review/list")
    public String reviewList(HttpServletRequest req, Model model) {
        rq = (Rq) req.getAttribute("rq");

        List<Review> reviews = reviewService.getReviewList();

        model.addAttribute("reviews", reviews);

        return "review/list";
    }

    @RequestMapping("/review/write")
    public String write(HttpServletRequest req) {
        return "review/write";
    }

    @RequestMapping("/review/doWrite")
    @ResponseBody
    public String doWrite(HttpServletRequest req, String title, String body) {
        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(title)) {
            return Ut.jsHistoryBack("F-1", Ut.f("제목을 입력하세요."));
        }

        if (Ut.isEmptyOrNull(body)) {
            return Ut.jsHistoryBack("F-1", Ut.f("내용을 입력하세요."));
        }

        ResultData doWriteRd = reviewService.doWrite(rq.getLoginedUserId(), title, body);

        int id = (int) doWriteRd.getData1();

        return Ut.jsReplace(doWriteRd.getResultCode(), doWriteRd.getMsg(), "/review/detail?id=" + id);
    }

    @RequestMapping("/review/detail")
    public String getReview(HttpServletRequest req, int id, Model model) {
        rq = (Rq) req.getAttribute("rq");

        Review review = reviewService.getForPrintReview(rq.getLoginedUserId(), id);

        model.addAttribute("review", review);

        return "review/detail";
    }

    @RequestMapping("/review/modify")
    public String modifyReview(HttpServletRequest req, int id, Model model) {
        rq = (Rq) req.getAttribute("rq");

        Review review = reviewService.getForPrintReview(rq.getLoginedUserId(), id);

        if (review == null) {
            return Ut.jsHistoryBack("F-1", Ut.f("%d번 리뷰는 없습니다.", id));
        }

        model.addAttribute("review", review);

        return "review/modify";
    }

    @RequestMapping("/review/doModify")
    @ResponseBody
    public String doModify(HttpServletRequest req, int id, String title, String body) {
        rq = (Rq) req.getAttribute("rq");

        Review review = reviewService.getReviewById(id);

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
    public String doDelete(HttpServletRequest req, int id) {
        rq = (Rq) req.getAttribute("rq");

        Review review = reviewService.getReviewById(id);

        if (review == null) {
            return Ut.jsHistoryBack("F-1" ,Ut.f("%d번 리뷰는 없습니다.", id));
        }

        ResultData userCanDeleteRd = reviewService.userCanDelete(rq.getLoginedUserId(), review);

        if (userCanDeleteRd.isFail()) {
            return Ut.jsHistoryBack(userCanDeleteRd.getResultCode(), userCanDeleteRd.getMsg());
        }

        if (userCanDeleteRd.isSuccess()) {
            reviewService.doDelete(id);
        }

        return Ut.jsReplace(userCanDeleteRd.getResultCode(), userCanDeleteRd.getMsg(), "/review/list");
    }
}

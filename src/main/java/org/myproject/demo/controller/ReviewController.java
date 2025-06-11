package org.myproject.demo.controller;

import org.myproject.demo.service.ReviewService;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @RequestMapping("/review/list")
    public String reviewList(Model model) {
        List<Review> reviews = reviewService.getReviewList();

        model.addAttribute("reviews", reviews);

        return "review/list";
    }

    @RequestMapping("/review/write")
    public String write() {
        return "review/write";
    }

    @RequestMapping("/review/doWrite")
    @ResponseBody
    public String doWrite(String title, String body) {
        reviewService.doWrite(title, body);
        return Ut.jsReplace("S-1", Ut.f("리뷰 쓰기 성공!"), "/review/list");
    }

    @RequestMapping("/review/detail")
    public String getReview(int id, Model model) {
        Review review = reviewService.getReviewById(id);

        model.addAttribute("review", review);

        return "review/detail";
    }

    @RequestMapping("/review/modify")
    public String modifyReview(int id, Model model) {
        Review review = reviewService.getReviewById(id);
        model.addAttribute("review", review);
        return "review/modify";
    }

    @RequestMapping("/review/doModify")
    @ResponseBody
    public String doModify(int id, String title, String body) {
        Review review = reviewService.getReviewById(id);

        if (review == null) {
            return Ut.jsHistoryBack("F-1" ,"%d번 리뷰는 없습니다.");
        }

        reviewService.doModify(id, title, body);

        return Ut.jsReplace("S-1", Ut.f("%d번 리뷰가 수정되었습니다", id), "/review/detail?id=" + id);
    }

    @RequestMapping("review/doDelete")
    @ResponseBody
    public String doDelete(int id) {
        Review review = reviewService.getReviewById(id);

        if (review == null) {
            return Ut.jsHistoryBack("F-1" ,"%d번 리뷰는 없습니다.");
        }

        reviewService.doDelete(id);

        return Ut.jsReplace("S-1",  Ut.f("%d번 리뷰가 삭제되었습니다.", id), "/review/list");
    }
}

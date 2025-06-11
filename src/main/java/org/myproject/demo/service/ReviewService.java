package org.myproject.demo.service;

import org.myproject.demo.repository.ReviewRepository;
import org.myproject.demo.vo.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    public void doWrite(String title, String body) {
        reviewRepository.doWrite(title, body);
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
}

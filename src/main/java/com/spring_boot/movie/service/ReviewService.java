package com.spring_boot.movie.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.movie.dao.IReviewDAO;
import com.spring_boot.movie.model.ReviewVO;

@Service
public class ReviewService implements IReviewService {
	@Autowired
	@Qualifier("IReviewDAO")
	private IReviewDAO dao;

	@Override
	public void upload(ReviewVO vo) {
		dao.upload(vo);
	}

	@Override
	public ArrayList<ReviewVO> reviewList(String movieNo) {
		return dao.reviewList(movieNo);
	}

	@Override
	public void delete(int reviewNo) {
		dao.delete(reviewNo);
	}

	@Override
	public void update(String reviewData) {
		dao.update(reviewData);
		
	}
}
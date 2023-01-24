package com.spring_boot.movie.service;

import java.util.ArrayList;

import com.spring_boot.movie.model.ReviewVO;

public interface IReviewService {
	public void upload(ReviewVO vo); // 채팅 추가
	public ArrayList<ReviewVO> reviewList(String movieNo); // 현재 영화의 채팅 목록 반환
	public void delete(int reviewNo); // 해당 글 삭제
	public void update(String reviewData); // 해당 글 수정
}

package com.spring_boot.movie.model;

public class ReviewVO {
	public int reviewNo;
	public String reviewData;
	public String memId;
	public String movieNo;
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewData() {
		return reviewData;
	}
	public void setReviewData(String reviewData) {
		this.reviewData = reviewData;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
}

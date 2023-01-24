package com.spring_boot.movie.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SchedulesVO {
	private String scNo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date scDate;
	private String movieNo;
	private String theaterNo;
	
	// db에는 없음
	private String theaterLocation;
	private String theaterName;
	private String movieTitle;
	
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getTheaterLocation() {
		return theaterLocation;
	}
	public void setTheaterLocation(String theaterLocation) {
		this.theaterLocation = theaterLocation;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getScNo() {
		return scNo;
	}
	public void setScNo(String scNo) {
		this.scNo = scNo;
	}
	public Date getScDate() {
		return scDate;
	}
	public void setScDate(Date scDate) {
		this.scDate = scDate;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
	public String getTheaterNo() {
		return theaterNo;
	}
	public void setTheaterNo(String theaterNo) {
		this.theaterNo = theaterNo;
	}
	
	
}

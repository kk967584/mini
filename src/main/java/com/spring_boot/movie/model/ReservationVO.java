package com.spring_boot.movie.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationVO {
	private String resNo;
	private String memId;
	private String movieTitle;
	private String theaterName;
	private String screenName;
	private String peopleAll;
	private String peopleAdult;
	private String peopleChild;
	private int price;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date scDate;
	private String scTime;
	private String seat;
		
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getScTime() {
		return scTime;
	}
	public void setScTime(String scTime) {
		this.scTime = scTime;
	}
	public Date getScDate() {
		return scDate;
	}
	public void setScDate(Date scDate) {
		this.scDate = scDate;
	}
	public String getResNo() {
		return resNo;
	}
	public void setResNo(String resNo) {
		this.resNo = resNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getPeopleAll() {
		return peopleAll;
	}
	public void setPeopleAll(String peopleAll) {
		this.peopleAll = peopleAll;
	}
	public String getPeopleAdult() {
		return peopleAdult;
	}
	public void setPeopleAdult(String peopleAdult) {
		this.peopleAdult = peopleAdult;
	}
	public String getPeopleChild() {
		return peopleChild;
	}
	public void setPeopleChild(String peopleChild) {
		this.peopleChild = peopleChild;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}

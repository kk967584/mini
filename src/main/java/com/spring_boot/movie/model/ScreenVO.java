package com.spring_boot.movie.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ScreenVO {
	private String screenNo;
	private String theaterNo;
	private String screenName;
	private String screenSeats;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date scDate;
	
	
	public Date getScDate() {
		return scDate;
	}
	public void setScDate(Date scDate) {
		this.scDate = scDate;
	}
	public String getScreenNo() {
		return screenNo;
	}
	public void setScreenNo(String screenNo) {
		this.screenNo = screenNo;
	}
	public String getTheaterNo() {
		return theaterNo;
	}
	public void setTheaterNo(String theaterNo) {
		this.theaterNo = theaterNo;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getScreenSeats() {
		return screenSeats;
	}
	public void setScreenSeats(String screenSeats) {
		this.screenSeats = screenSeats;
	}
	
	
}

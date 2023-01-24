package com.spring_boot.movie.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.movie.model.ReservationVO;
import com.spring_boot.movie.model.SchedulesVO;
import com.spring_boot.movie.model.ScreenVO;

public interface IReservationDAO {
	public ArrayList<SchedulesVO> selectTheaterLocation(String movieNo);
	public ArrayList<SchedulesVO> selectTheater(String movieNo);
	public void insertRes(ReservationVO vo);
	public ArrayList<ReservationVO> checkRes(String memId);
	public ArrayList<ScreenVO> dateCheck(SchedulesVO vo);
	public String titleSetter(String movieNo);
	public ArrayList<SchedulesVO> locationChecker(HashMap<String, Object> map);
	
}

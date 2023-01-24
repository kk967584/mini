package com.spring_boot.movie.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.movie.dao.IReservationDAO;
import com.spring_boot.movie.model.ReservationVO;
import com.spring_boot.movie.model.SchedulesVO;
import com.spring_boot.movie.model.ScreenVO;

@Service
public class ReservationService implements IReservationService {
	@Autowired
	@Qualifier("IReservationDAO")
	private IReservationDAO dao;

	@Override
	public ArrayList<SchedulesVO> selectTheaterLocation(String movieNo) {
		return dao.selectTheaterLocation(movieNo);
	}

	@Override
	public ArrayList<SchedulesVO> selectTheater(String movieNo) {
		// TODO Auto-generated method stub
		return dao.selectTheater(movieNo);
	}

	@Override
	public void insertRes(ReservationVO vo) {
		dao.insertRes(vo);
	}

	@Override
	public ArrayList<ScreenVO> dateCheck(SchedulesVO vo) {
		// TODO Auto-generated method stub
		return dao.dateCheck(vo);
	}

	@Override
	public String titleSetter(String movieNo) {
		// TODO Auto-generated method stub
		return dao.titleSetter(movieNo);
	}

	@Override
	public ArrayList<SchedulesVO> locationChecker(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.locationChecker(map);
	}

	@Override
	public ArrayList<ReservationVO> checkRes(String memId) {
		// TODO Auto-generated method stub
		return dao.checkRes(memId);
	}

}

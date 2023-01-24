package com.spring_boot.movie.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.movie.model.ReservationVO;
import com.spring_boot.movie.model.SchedulesVO;
import com.spring_boot.movie.model.ScreenVO;
import com.spring_boot.movie.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService service;

	// 처음 들어올 때
	@RequestMapping("/reservation/{movieNo}")
	public String rsSelectTheaterLocation(@PathVariable String movieNo, Model model) {
		String titleSetter = service.titleSetter(movieNo);
		ArrayList<SchedulesVO> locationList = service.selectTheaterLocation(movieNo);
		ArrayList<SchedulesVO> theaterList = service.selectTheater(movieNo);
		model.addAttribute("titleSetter", titleSetter);
		model.addAttribute("locationList", locationList);
		model.addAttribute("theaterList", theaterList);
		
		return "reservation/reservation";
	}
	
	// 연습용
	@RequestMapping("/reservation")
	public String testview() {
		
		return "reservation/resTest";
	}
	
	// 예매정보 DB로 넘기기
	@RequestMapping("/reservation/insertRes")
	public String rstest(ReservationVO vo, Model model, HttpSession session) {
		String memId = "1234"/*(String) session.getAttribute("sid")*/;
		ArrayList<ReservationVO> voList = service.checkRes(memId);
		model.addAttribute("resVoList", voList);
		
		vo.setMemId(memId);
		service.insertRes(vo);
		
		return "reservation/reservation2";
	}
	
	@RequestMapping("/reservation/selectTime")
	public String rstest2(SchedulesVO vo, Model model) {
		/*
		 * ArrayList<ReservationVO> vo = new ArrayList<ReservationVO>(); vo.set
		 */
		ArrayList<ScreenVO> vo2 = service.dateCheck(vo);
		model.addAttribute("vo2",vo2);
		
		
		return "reservation/reservation2";
	}
	
	// 실패한 ajax
	@ResponseBody
	@RequestMapping("/reservation/test")
	public ArrayList<SchedulesVO> locationCheck(@RequestParam HashMap<String, Object> param,
												  Model model) {
		ArrayList<SchedulesVO> thList = service.locationChecker(param);
		
		return thList;
	}
}









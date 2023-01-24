package com.spring_boot.movie.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.movie.model.MovieInfoVO;
import com.spring_boot.movie.service.MovieInfoService;



@Controller
public class MainController {
	@Autowired
	MovieInfoService service;
	
//	// index 페이지 열기
//	@RequestMapping("/index")
//	public String index() {
//		return "index";
//	}

	
	// 무비 페이지 - 현재상영작 열기
	@RequestMapping("/movie/movieInfo")
	public String movieInfo(Model model) {
		ArrayList<MovieInfoVO> voList = service.listMovieInfo();
		model.addAttribute("voList",voList);
		return "movie/movieInfo";
	}
	
	// 무비 페이지 - 상영 예정작
	@RequestMapping("/movie/movieInfo_fut")
	public String movieInfo_fut(Model model) {
		return "/movie/movieInfo_fut";
	}
	
	//	무비 페이지 - 영화 검색
	@ResponseBody
	@RequestMapping("/movie/movieSearch1")
	public ArrayList<MovieInfoVO> movieSearch1(@RequestParam String movieTitle,
													Model model){
		
		System.out.println(movieTitle);
		ArrayList<MovieInfoVO> movieList = service.movieSearch(movieTitle);
//		model.addAttribute("movieList", movieList);
		return movieList;	
	}


	// 영화(블랙팬서) 상세페이지
	@RequestMapping("/movie/detailViewMovie/{movieNo}")
	public String detailViewMovie(@PathVariable String movieNo,
														Model model) {
		MovieInfoVO vo = service.detailViewMovie(movieNo);
		model.addAttribute("vo",vo);
		return "/movie/blackpanther";
	}
	
	@RequestMapping("/reservation/movielist")
	   public String movieInfo2(Model model) {
	      ArrayList<MovieInfoVO> voList = service.listMovieInfo();
	      model.addAttribute("voList",voList);
	      return "/reservation/ReservationPage";
	   }
}

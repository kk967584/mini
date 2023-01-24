package com.spring_boot.movie.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.movie.model.ReviewVO;
import com.spring_boot.movie.service.ReviewService;


@Controller
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	// 봤던 영화 포스터 목록들 띄우기
	@RequestMapping("/review/sawMovieList")
	public String sawMovieList() {
		
		return "review/sawMovieList";
	}

	// 리뷰채팅페이지(chat.jsp) 열기
	@RequestMapping("/review/chat")
	//@RequestMapping("/review/chat/{movieNo}") // 나중에 앞에 분이 구현했을때 변경

	public String chat(Model model) {
			// 현재 앞에 페이지가 구현이 안 되었음로 movieNo전달이 안 되기때문에 
			// movieNo 값이 전달됐다고 가정하고 movieNo에 임의값 저장
			String movieNo = "M1001"; // 앞에 페이지 구현한 뒤에는 29줄 삭제
			ArrayList<ReviewVO> reviewList = service.reviewList(movieNo); 
			model.addAttribute("reviewList", reviewList);

		return "review/chat";
	}

	// 채팅 목록 출력
	@RequestMapping("/review/reviewList")
	public String reviewList(Model model, HttpSession session) {
		// review테이블에서 현재 로그인 한 회원에 해당되는 내용
		// memId 확인 필요

		// movieNo 확인 필요 -> 각 영화의 관한 채팅 목록 나타내기 위해
		String movieNo = (String) session.getAttribute("sid");

		ArrayList<ReviewVO> reviewList = service.reviewList(movieNo); 
		model.addAttribute("reviewList", reviewList);

		return "review/reviewListView";
	}

	// 채팅 추가
	@RequestMapping("/review/upload")
	public String upload(ReviewVO vo, HttpSession session) {
		// memId와 movieNo 확인 필요
		
		String movieNo = "M1001";
		String memId = (String)session.getAttribute("sid");
		vo.setMovieNo(movieNo); // vo의 movieNo 값 설정
		vo.setMemId(memId);
		service.upload(vo);
		
		// 채팅 목록 출력 요청 포워딩
		return "redirect:/review/chat";
	}

	// 채팅 삭제
	@RequestMapping("/review/delete/{reviewNo}")
	public String delete(@PathVariable int reviewNo) {

		service.delete(reviewNo);

		return "redirect:/review/chat";
	}

	// 채팅 수정
	@RequestMapping("/reivew/update/{reviewData}")
	public String update(@PathVariable String reviewData) {
		// 수정버튼 누르면 바뀐 내용이 update 수행
		// Mapper에게 vo로 전달하기 위해 받아온 값으로 vo값 설정
		ReviewVO vo = new ReviewVO();
		vo.setReviewData(reviewData);

		service.update(reviewData);

		return "redirect:/review/chat";

	}
}

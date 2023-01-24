package com.spring_boot.movie.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.movie.model.MemberVO;
import com.spring_boot.movie.service.MemberService;


@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 폼 열기
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	// 비밀번호 암호화하기 이전 로그인 처리 방식
	// 로그인 처리 : id와 pwd 전달 받아서 로그인 인증 완료 후 세션 설정
//	@ResponseBody
//	@RequestMapping("/member/login")
//	public String loginCheck(@RequestParam HashMap<String, Object> param,
//												HttpSession session) {
//		// 로그인 체크 결과 
//		String memId = service.loginCheck(param);
//		String result = "fail";
//		
//		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
//		if(memId != null) {
//			//로그인 성공하면 세션 변수 지정
//			session.setAttribute("sid", memId);
//			result = "success";
//		}
//		
//		return result;
//	}
	
	// 비밀번호 암호화한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
												HttpSession session) {
		// 로그인 체크 결과 
		String result = service.loginCheck(param); // result : "success" 또는 "fail"

		
		
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		// 서비스에서 "success" 반환받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("memId"));			
		}
		
		return result;
	}
	
	
	
	
	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		//세션 무효화
		session.invalidate();		
		System.out.println(session);
		return "redirect:/index";
	}
	
	// 회원가입 폼 열기
	@RequestMapping("/member/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	
	// 회원가입
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo,
									  @RequestParam("memCall") String memCall,
									  @RequestParam("hp1") String hp1,
									  @RequestParam("memHP") String memHP) {
		// vodml memHP의 값을 수정해서
		vo.setMemHP(memCall + hp1  + memHP);
		service.insertMember(vo); // 수정된 vo 전달
		return "member/loginForm"; // 회원 가입 후 로그인 폼으로 이동
	}
	
	// 간편 회원가입 폼 열기
		@RequestMapping("/member/joinForm2")
		public String joinForm2() {
			return "member/joinForm2";
		}
		
	//사용약관 폼 열기
		// 간편 회원가입 폼 열기
				@RequestMapping("/member/checkBox")
				public String checkBox() {
					return "member/checkBox";
				}
	@ResponseBody
	@RequestMapping("/member/idCheck")
	public int idCheck(@RequestParam("memId") String memId) {
		return service.idCheck(memId);
		
	}
	

				
				
}









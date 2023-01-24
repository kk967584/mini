package com.spring_boot.movie;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	// index 페이지 열기
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
}

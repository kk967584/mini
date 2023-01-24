package com.spring_boot.movie.service;


import java.util.HashMap;

import com.spring_boot.movie.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public int idCheck(String memId);



}

package com.spring_boot.movie.service;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot.movie.dao.IMemberDAO;
import com.spring_boot.movie.model.MemberVO;


@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// 비밀번호 암호화하기 이전의 로그인 처리 방식
//	@Override
//	public String loginCheck(HashMap<String, Object> map) {		
//		return dao.loginCheck(map);
//	}
	
	// 암호화된 비밀번호로 로그인 체크
	@Override
	public String loginCheck(HashMap<String, Object> map) {		
		// 전달된 아이디로 암호화된 비밀번호 알아온 후
		String encodedPw = dao.loginCheck((String)map.get("memId"));
		
		String result = "fail";
		// 암호화된 비밀번호와 입력해서 전달된 비밀번호와 일치하는지 확인
		if(encodedPw != null && passwordEncoder.matches((String)map.get("memPwd"), encodedPw)) {
			result = "success";
		}
		// matches() : 평문과 암호화된 문장 비교
		return result;
	}
	
	@Override
	public int idCheck(String memId) {
		return dao.idCheck(memId);
	}

	@Override
	public void insertMember(MemberVO vo) {
		// 입력한 비밀번호를 암호화해서 저장
		// vo에서 비밀번호 가져와서 암호화한 후
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());
		// 암호화된 비밀번호로 vo에 저장한 후 vo를 mapper에 보내서 db에 저장
		vo.setMemPwd(encodedPassword); // vo에 암호화된 비밀번호 저장
		dao.insertMember(vo);
	}
	
	
	
	
	


}

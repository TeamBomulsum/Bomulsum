package com.web.bomulsum.user.login.service;

import com.web.bomulsum.user.login.repository.LoginVO;
import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.repository.NowLoginVO;

public interface MemberService {
	
	// 유저 회원 가입
	void insertMember(MemberVO vo);
	
	// 유저 이메일 중복 확인
	int checkEmail(String memberEmail);
	
	// 로그인 체크
	int loginCheck(LoginVO vo);
	
	// 로그인 유무 처리
	void updateLogin(NowLoginVO vo);
	
	// 회원 코드 가져오기
	String getUserCode(String memberEmail);
	
	// 회원 이름 가져오기
	String getUserName(String code);
	
	// 회원 로그아웃
	void logout(NowLoginVO vo);
	
}

package com.web.bomulsum.user.login.service;

import com.web.bomulsum.user.login.repository.MemberVO;

public interface MemberService {
	// 유저 회원 가입
	void insertMember(MemberVO vo);
}

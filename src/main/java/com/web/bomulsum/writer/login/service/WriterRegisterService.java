package com.web.bomulsum.writer.login.service;


import java.util.Date;
import java.util.List;

import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

public interface WriterRegisterService {
	
	//회원가입
	void insertMember(WriterRegisterVO vo);
	
	//아이디 체크
	int checkId(String writerEmail);
	
	//회원 정보조회 기능
	WriterRegisterVO selectOne(String writerEmail);
	
	//자동로그인
	void keepLogin(String sessionId, Date limitTime, String writerEmail);
	
	//세션 아이디를 통한 회원 정보 조회 기능
	WriterRegisterVO getUserWithSessionId(String sessionId);
}

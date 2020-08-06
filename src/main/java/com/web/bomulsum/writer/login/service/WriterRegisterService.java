package com.web.bomulsum.writer.login.service;


import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

public interface WriterRegisterService {
	
	//회원가입
	void insertMember(WriterRegisterVO vo);
	
	//아이디 체크
	int checkId(String writerEmail);
}

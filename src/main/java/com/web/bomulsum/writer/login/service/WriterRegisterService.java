package com.web.bomulsum.writer.login.service;


import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

public interface WriterRegisterService {
	
	//ȸ������
	void insertMember(WriterRegisterVO vo);
	
	//���̵� üũ
	int checkId(String writerEmail);
}

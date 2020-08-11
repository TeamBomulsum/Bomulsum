package com.web.bomulsum.writer.login.service;


import java.util.Date;
import java.util.List;

import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

public interface WriterRegisterService {
	
	//ȸ������
	void insertMember(WriterRegisterVO vo);
	
	//���̵� üũ
	int checkId(String writerEmail);
	
	//ȸ�� ������ȸ ���
	WriterRegisterVO selectOne(String writerEmail);
	
	//�ڵ��α���
	void keepLogin(String sessionId, Date limitTime, String writerEmail);
	
	//���� ���̵� ���� ȸ�� ���� ��ȸ ���
	WriterRegisterVO getUserWithSessionId(String sessionId);
}

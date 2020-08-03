package com.web.bomulsum.user.login.service;

import com.web.bomulsum.user.login.repository.LoginVO;
import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.repository.NowLoginVO;

public interface MemberService {
	
	// ���� ȸ�� ����
	void insertMember(MemberVO vo);
	
	// ���� �̸��� �ߺ� Ȯ��
	int checkEmail(String memberEmail);
	
	// �α��� üũ
	int loginCheck(LoginVO vo);
	
	// �α��� ���� ó��
	void updateLogin(NowLoginVO vo);
	
	// ȸ�� �ڵ� ��������
	String getUserCode(String memberEmail);
	
	// ȸ�� �̸� ��������
	String getUserName(String code);
	
	// ȸ�� �α׾ƿ�
	void logout(NowLoginVO vo);
	
}

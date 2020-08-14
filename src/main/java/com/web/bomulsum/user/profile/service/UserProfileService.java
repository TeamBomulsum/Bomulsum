package com.web.bomulsum.user.profile.service;

import com.web.bomulsum.user.profile.repository.UserProfileVO;

public interface UserProfileService {
	//-----------회원등급
	int getSumpay();
	int getSumpayPeriod();
	
	//-----------회원정보관리
	UserProfileVO getUserinfo();
	void updateUserinfo(UserProfileVO vo); //회원정보 수정
	void updateUserphone(UserProfileVO vo); //전화번호 수정
}

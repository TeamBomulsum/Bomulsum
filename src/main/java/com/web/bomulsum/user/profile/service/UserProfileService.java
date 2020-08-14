package com.web.bomulsum.user.profile.service;

import com.web.bomulsum.user.profile.repository.UserProfileVO;

public interface UserProfileService {
	//회원등급
	int getSumpay();
	int getSumpayPeriod();
	
	//회원정보관리
	UserProfileVO getUserinfo();
	void updateUserinfo(UserProfileVO vo);
}

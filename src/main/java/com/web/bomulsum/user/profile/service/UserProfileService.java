package com.web.bomulsum.user.profile.service;

import com.web.bomulsum.user.profile.repository.UserProfileVO;

public interface UserProfileService {
	//-----------회원등급
	int getSumpay();	//회원 구매금액 합계
	int getSumpayPeriod(); //3개월내 미구매 있는지 알아오기
	
	//-----------회원정보관리
	UserProfileVO getUserinfo(); //회원 정보 가져오기
	void updateUserinfo(UserProfileVO vo); //회원정보 수정
	void updateUserphone(UserProfileVO vo); //전화번호 수정
	void deleteUser(UserProfileVO vo); //회원 탈퇴
}

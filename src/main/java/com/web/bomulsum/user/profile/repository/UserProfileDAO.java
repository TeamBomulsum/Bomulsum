package com.web.bomulsum.user.profile.repository;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserProfileDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	//회원등급--------------------------------------
	public int getSumpay() {
		int result = sqlSessionTemplate.selectOne("userProfileDAO.getSumPay");
		System.out.println(result);
		return result;
	}
	public int getSumpayPeriod() {
		int result = sqlSessionTemplate.selectOne("userProfileDAO.getSumPayPeriod");
		System.out.println(result);
		return result;
	}
	
	//회원 정보관리--------------------------------------
		//회원 정보 불러오기
		public UserProfileVO getUserinfo(){
			UserProfileVO info = sqlSessionTemplate.selectOne("userProfileDAO.getUserInfo");
			return info;
		}
		//회원정보 업데이트
		public void updateUserinfo(UserProfileVO vo) {
			sqlSessionTemplate.update("userProfileDAO.updateUserInfo", vo);
		}
		//회원전화번호 업데이트
		public void updateUserphone(UserProfileVO vo) {
			sqlSessionTemplate.update("userProfileDAO.updateUserPhone", vo);
		}
		//회원삭제
		public void deleteUser(UserProfileVO vo) {
			sqlSessionTemplate.delete("userProfileDAO.deleteUser", vo);
		}
	
		
		//회원 배송지 관리------------------------------
		//회원 배송지 입력
		public void insertUserAddress(UserProfileAddressVO vo) {
			sqlSessionTemplate.insert("userProfileDAO.insertUserAddress" , vo);
		}
		
		//회원 배송지 조회
		public List<UserProfileAddressVO> selectUserAddress(){
			List<UserProfileAddressVO> result = 
					sqlSessionTemplate.selectList("userProfileDAO.selectUserAddress");
			return result;
		}
		
		//회원 배송지 업데이트
		public void updateUserAddress(UserProfileAddressVO vo){
			sqlSessionTemplate.insert("userProfileDAO.updateUserAddress",vo);
		}
		
		//회원 사이드 프로필------------------------------
		
		public void updateUserProfileImg(String pimg){
			sqlSessionTemplate.update("userProfileDAO.updateUserProfile",pimg);
		}
		
}

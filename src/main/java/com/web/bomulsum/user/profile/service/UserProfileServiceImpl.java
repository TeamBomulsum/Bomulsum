package com.web.bomulsum.user.profile.service;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.profile.repository.UserProfileDAO;
import com.web.bomulsum.user.profile.repository.UserProfileVO;

@Service
public class UserProfileServiceImpl implements UserProfileService{
	@Autowired
	UserProfileDAO dao;
	
	//회원 등급
	public int getSumpay() {
		return dao.getSumpay();
	}

	@Override
	public int getSumpayPeriod() {
		return dao.getSumpayPeriod();
	}


	//회원정보관리
	@Override
	public UserProfileVO getUserinfo() {
		return dao.getUserinfo();
	}

	@Override
	public void updateUserinfo(UserProfileVO vo) {
		//체크박스 N값 설정
		if(vo.getMember_sms_agree()==null) {
			vo.setMember_sms_agree("N");
		}
		if(vo.getMember_email_agree()==null) {
			vo.setMember_email_agree("N");
		}
		
		
		dao.updateUserinfo(vo);
	}


}

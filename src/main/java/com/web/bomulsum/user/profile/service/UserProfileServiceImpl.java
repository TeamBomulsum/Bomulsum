package com.web.bomulsum.user.profile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.profile.repository.UserProfileDAO;

@Service
public class UserProfileServiceImpl implements UserProfileService{
	@Autowired
	UserProfileDAO dao;
	
	public int getSumpay() {
		return dao.getSumpay();
	}

	@Override
	public int getSumpayPeriod() {
		return dao.getSumpayPeriod();
	}
}

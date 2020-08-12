package com.web.bomulsum.user.profile.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserProfileDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
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
}

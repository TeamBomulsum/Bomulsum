package com.web.bomulsum.user.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class userDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertBoard(userVO vo) {
		System.out.println("--> MyBatis로 insertBoard() 기능 처리");
		sqlSessionTemplate.insert("userDAO.insertVO", vo);
	}

}

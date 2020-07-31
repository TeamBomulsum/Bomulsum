package com.web.bomulsum.user.login.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertMember(MemberVO vo) {
		sqlSessionTemplate.insert("MemberDAO.insertMember", vo);
	}
	
	public int checkEmail(String memberEmail) {
		return sqlSessionTemplate.selectOne("MemberDAO.checkEmail", memberEmail);
	}
	
}

package com.web.bomulsum.user.login.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	public int loginCheck(LoginVO vo) {
		System.out.println("dao : " + vo.toString());
		String email = vo.getEmail();
		String pw = sqlSessionTemplate.selectOne("MemberDAO.getPw", email);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(vo.getPassword(), pw)) {
			vo.setPassword(pw);
			return sqlSessionTemplate.selectOne("MemberDAO.checkLogin", vo);
		}
		return 0;
	}
	
	public void updateLogin(NowLoginVO vo) {
		sqlSessionTemplate.update("MemberDAO.updateLogin", vo);
	}
	
	public String getUserCode(String memberEmail) {
		return sqlSessionTemplate.selectOne("MemberDAO.getUserCode", memberEmail);
	}
	
	public String getUserName(String code) {
		return sqlSessionTemplate.selectOne("MemberDAO.getUserName", code);
	}
	
	public void logout(NowLoginVO vo) {
		sqlSessionTemplate.update("MemberDAO.logout", vo);
	}
	
}

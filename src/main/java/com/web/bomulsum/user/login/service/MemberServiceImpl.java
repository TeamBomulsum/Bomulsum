 package com.web.bomulsum.user.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.login.repository.MemberDAO;
import com.web.bomulsum.user.login.repository.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;

	@Override
	public void insertMember(MemberVO vo) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		encoder.matches(vo.getPassword(), checkVO.getPassword())    암호화 되어잇는거 맞는지 확인.
//		암호화 과정
		vo.setMemberPassword(encoder.encode(vo.getMemberPassword()));
		dao.insertMember(vo);
	}

	@Override
	public int checkEmail(String memberEmail) {
		return dao.checkEmail(memberEmail);
	}

}

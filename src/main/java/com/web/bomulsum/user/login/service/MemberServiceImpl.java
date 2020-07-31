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
//		encoder.matches(vo.getPassword(), checkVO.getPassword())    ��ȣȭ �Ǿ��մ°� �´��� Ȯ��.
//		��ȣȭ ����
		vo.setMemberPassword(encoder.encode(vo.getMemberPassword()));
		dao.insertMember(vo);
	}

	@Override
	public int checkEmail(String memberEmail) {
		return dao.checkEmail(memberEmail);
	}

}

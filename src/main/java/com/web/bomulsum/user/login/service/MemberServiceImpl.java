package com.web.bomulsum.user.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.login.repository.MemberDAO;
import com.web.bomulsum.user.login.repository.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;

	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
	}

}

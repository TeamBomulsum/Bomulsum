 package com.web.bomulsum.user.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.login.repository.LoginVO;
import com.web.bomulsum.user.login.repository.MemberDAO;
import com.web.bomulsum.user.login.repository.MemberSessionVO;
import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.repository.NowLoginVO;

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

	@Override
	public int loginCheck(LoginVO vo) {
		return dao.loginCheck(vo);
	}

	@Override
	public void updateLogin(NowLoginVO vo) {
		dao.updateLogin(vo);
	}

	@Override
	public String getUserCode(String memberEmail) {
		return dao.getUserCode(memberEmail);
	}

	@Override
	public String getUserName(String code) {
		return dao.getUserName(code);
	}

	@Override
	public void logout(NowLoginVO vo) {
		dao.logout(vo);
	}

	@Override
	public MemberSessionVO getUser(String code) {
		return dao.getUser(code);
	}

}

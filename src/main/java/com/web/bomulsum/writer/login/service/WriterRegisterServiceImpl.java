package com.web.bomulsum.writer.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.login.repository.WriterRegisterDAO;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

@Service
public class WriterRegisterServiceImpl implements WriterRegisterService{

	@Autowired
	WriterRegisterDAO dao;
	
	@Override
	public void insertMember(WriterRegisterVO vo) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		encoder.matches(vo.getPassword(), checkVO.getPassword())    ��ȣȭ �Ǿ��մ°� �´��� Ȯ��.
//		��ȣȭ ����
		vo.setWriterPassword(encoder.encode(vo.getWriterPassword()));
		dao.insertMember(vo);
	}

	@Override
	public int checkId(String writerEmail) {
		return dao.checkId(writerEmail);
	}

}

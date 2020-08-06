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
//		encoder.matches(vo.getPassword(), checkVO.getPassword())    암호화 되어잇는거 맞는지 확인.
//		암호화 과정
		vo.setWriterPassword(encoder.encode(vo.getWriterPassword()));
		dao.insertMember(vo);
	}

	@Override
	public int checkId(String writerEmail) {
		return dao.checkId(writerEmail);
	}

}

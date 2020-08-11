package com.web.bomulsum.writer.midas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.midas.repository.WriterMidasDAO;
import com.web.bomulsum.writer.midas.repository.WriterMidasVO;

@Service
public class WriterMidasServiceImpl implements WriterMidasService{

	@Autowired
	WriterMidasDAO dao;
	
	@Override
	public void midasRegister(WriterMidasVO vo) {
		dao.midasRegister(vo);
	}

	@Override
	public String selectWriterCode(String writerEmail) {
		return  dao.writerEmail(writerEmail);
	}



}

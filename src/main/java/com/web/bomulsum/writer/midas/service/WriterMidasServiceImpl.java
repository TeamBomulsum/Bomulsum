package com.web.bomulsum.writer.midas.service;

import java.util.List;

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

	@Override
	public List<WriterMidasVO> getClassAllSelect(String writerCodeSeq) {
		return dao.getClassAllSelect(writerCodeSeq);
	}

	@Override
	public WriterMidasVO getClassArticle(String orderSeq) {
		return dao.getClassArticle(orderSeq);
	}


	@Override
	public void midasModify(WriterMidasVO vo) {
		dao.midasModify(vo);	
	}

	@Override
	public void midasDelete(String orderSeq) {
		dao.midasDelete(orderSeq);
	}

	@Override
	public void midasRunUpdate(WriterMidasVO vo) {
		dao.midasRunUpdate(vo);
		
	}



}

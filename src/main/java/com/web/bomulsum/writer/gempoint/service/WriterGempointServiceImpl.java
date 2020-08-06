package com.web.bomulsum.writer.gempoint.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.gempoint.repository.WriterGempointDAO;
import com.web.bomulsum.writer.gempoint.repository.WriterGempointVO;

@Service
public class WriterGempointServiceImpl implements WriterGempointService{

	@Autowired
	WriterGempointDAO dao;
	   
	@Override
	public List<WriterGempointVO> getGemPoint() {
	      List<WriterGempointVO> list = dao.getGemPoint();
	      return list;
	}

	@Override
	public int getGemPointSum() {
		return dao.getGemPointSum();
	}

}

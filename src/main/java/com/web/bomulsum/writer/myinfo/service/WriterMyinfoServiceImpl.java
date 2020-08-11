package com.web.bomulsum.writer.myinfo.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.myinfo.repository.WriterMyinfoDAO;
import com.web.bomulsum.writer.myinfo.repository.WriterMyinfoVO;

@Service
public class WriterMyinfoServiceImpl implements WriterMyinfoService{
	@Autowired
	WriterMyinfoDAO dao;
	
	@Override
	public WriterMyinfoVO getWriterMyinfo() {
		return dao.getWriterMyinfo();
	}

	@Override
	public Map<String, Object> getGemPointSum2() {
		return dao.getGemPointSum2();
	}

	@Override
	public void insertPhone(String writerPhone) {
		dao.insertPhone(writerPhone);
	}

	@Override
	public void insertUrl(String writerUrl) {
		dao.insertUrl(writerUrl);
	}

}

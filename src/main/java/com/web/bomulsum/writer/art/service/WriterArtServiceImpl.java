package com.web.bomulsum.writer.art.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.art.repository.WriterArtDAO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;


@Service
public class WriterArtServiceImpl implements WriterArtService{

	 @Autowired
	 WriterArtDAO dao;

	@Override
	public void insertArt(WriterArtVO vo) {
		// TODO Auto-generated method stub
		dao.insertArt(vo);
	}

	@Override
	public String getArtCode(String artName) {
		return dao.getArtCode(artName);
	}


	@Override
	public void insertArtInfoDetail(WriterArtInfoDetailVO vo) {
		dao.insertArtInfoDetail(vo);	
	}


	@Override
	public void insertArtOption1(Map<String, Object> map) {
		dao.insertArtOption1(map);	
	}

	@Override
	public void insertArtOption2(Map<String, Object> map) {
		dao.insertArtOption2(map);
	}

	@Override
	public void insertArtOption3(Map<String, Object> map) {
		dao.insertArtOption3(map);	
	}

	@Override
	public void insertArtOption4(Map<String, Object> map) {
		dao.insertArtOption4(map);
	}

	@Override
	public void insertArtOption5(Map<String, Object> map) {
		dao.insertArtOption5(map);
	}

	@Override
	public void insertArtOption6(Map<String, Object> map) {
		dao.insertArtOption6(map);
	}

	@Override
	public void insertArtOption7(Map<String, Object> map) {
		dao.insertArtOption7(map);
	}

	@Override
	public void insertArtOption8(Map<String, Object> map) {
		dao.insertArtOption8(map);
	}

	@Override
	public void insertArtOption9(Map<String, Object> map) {
		dao.insertArtOption9(map);
	}


}

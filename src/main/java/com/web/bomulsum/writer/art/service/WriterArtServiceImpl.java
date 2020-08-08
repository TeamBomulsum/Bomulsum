package com.web.bomulsum.writer.art.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.art.repository.WriterArtDAO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
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
	/*
	@Override
	public void insertArtOption(WriterArtOptionVO vo) {
		dao.insertArtOption(vo);		
	}
	
	@Override
	public void insertArtOptionl() {
		dao.insertArtOptionl();
		
	}
	*/

	@Override
	public void insertArtOptionCat1(Map<String, Object> map) {
		dao.insertArtOptionCat1(map);	
	}

	@Override
	public void insertArtOptionCat2(Map<String, Object> map) {
		dao.insertArtOptionCat2(map);
	}

	@Override
	public void insertArtOptionCat3(Map<String, Object> map) {
		dao.insertArtOptionCat3(map);
	}
}

package com.web.bomulsum.writer.art.service;

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

}

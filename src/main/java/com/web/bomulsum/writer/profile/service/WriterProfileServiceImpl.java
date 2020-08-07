package com.web.bomulsum.writer.profile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.profile.repository.WriterProfileDAO;
import com.web.bomulsum.writer.profile.repository.WriterProfileVO;

@Service
public class WriterProfileServiceImpl implements WriterProfileService{
	
	@Autowired
	WriterProfileDAO dao;
	
	@Override
	public void updateWriterProfile(WriterProfileVO vo) {
		dao.updateWriterProfile(vo);
	}

}

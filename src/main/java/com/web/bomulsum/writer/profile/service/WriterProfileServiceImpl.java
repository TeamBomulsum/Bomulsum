package com.web.bomulsum.writer.profile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.profile.repository.WriterProfileDAO;
import com.web.bomulsum.writer.profile.repository.WriterProfileVO;
import com.web.bomulsum.writer.salespolicy.repository.WriterSalesPolicyVO;

@Service
public class WriterProfileServiceImpl implements WriterProfileService{
	
	@Autowired
	WriterProfileDAO dao;
	
	@Override
	public void updateWriterProfile(WriterProfileVO vo) {
		dao.updateWriterProfile(vo);
	}

	@Override
	public WriterProfileVO getWriterProfile() {
		return dao.getWriterProfile();
	}

	@Override
	public String getWriterProfileImg() {
		return dao.getWriterProfileImg();
	}

	@Override
	public String getWriterCoverImg() {
		return dao.getWriterCoverImg();
	}


}

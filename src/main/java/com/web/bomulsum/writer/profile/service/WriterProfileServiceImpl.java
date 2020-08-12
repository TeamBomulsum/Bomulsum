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

	@Override
	public WriterProfileVO getWriterProfile(String writerCodeSeq) {
		return dao.getWriterProfile(writerCodeSeq);
	}

	@Override
	public String getWriterProfileImg(String writerCodeSeq) {
		return dao.getWriterProfileImg(writerCodeSeq);
	}

	@Override
	public String getWriterCoverImg(String writerCodeSeq) {
		return dao.getWriterCoverImg(writerCodeSeq);
	}


}

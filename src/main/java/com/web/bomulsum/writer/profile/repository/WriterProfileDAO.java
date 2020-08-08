package com.web.bomulsum.writer.profile.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterProfileDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//작가 기본프로필 등록(업데이트)
	public void updateWriterProfile(WriterProfileVO vo){
		sqlSessionTemplate.update("writerProfileDAO.updateProfile",vo);
	}
}

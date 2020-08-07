package com.web.bomulsum.writer.profile.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterProfileDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//�۰� �⺻������ ���(������Ʈ)
	public void updateWriterProfile(WriterProfileVO vo){
		sqlSessionTemplate.update("writerProfileDAO.updateProfile",vo);
	}
}

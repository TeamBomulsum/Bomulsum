package com.web.bomulsum.writer.login.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterRegisterDAO{

	@Autowired
	SqlSessionTemplate template;
	
	public void insertMember(WriterRegisterVO vo) {
		template.insert("WriterRegisterDAO.insertMember",vo);
	}
	public int checkId(String writerEmail) {
		return template.selectOne("WriterRegisterDAO.checkId", writerEmail);
	}
}

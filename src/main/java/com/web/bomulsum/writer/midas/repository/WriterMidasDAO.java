package com.web.bomulsum.writer.midas.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterMidasDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	public void midasRegister(WriterMidasVO vo) {
		template.insert(
				"com.web.bomulsum.writer.midas.repository.WriterMidasDAO.midasRegister",vo);
		
	}
}

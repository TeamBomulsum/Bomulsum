package com.web.bomulsum.writer.midas.repository;

import java.util.List;

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
	public String writerEmail(String writerEmail) {
		return template.selectOne(
				"com.web.bomulsum.writer.midas.repository.WriterMidasDAO.selectWriterCode", writerEmail);
	}
	public List<WriterMidasVO> getClassAllSelect(String writerCodeSeq){
		return template.selectList(
				"com.web.bomulsum.writer.midas.repository.WriterMidasDAO.getClassAllSelect", writerCodeSeq
				);
	}
	public WriterMidasVO getClassArticle(String orderSeq) {
		return template.selectOne("com.web.bomulsum.writer.midas.repository.WriterMidasDAO.getClassArticle", orderSeq);
	}
}

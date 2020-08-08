package com.web.bomulsum.writer.art.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterArtDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//��ǰ ���
	public void insertArt(WriterArtVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArt", vo);	
	}
/*	
	//��ǰ �ڵ� ��������
	public String getArtCode(String artName) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", artName);
	}
*/	
	//��ǰ�������� ������
	public void insertArtInfoDetail(WriterArtInfoDetailVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtInfoDetail", vo);
	}
	
	//��ǰ �ڵ� �˻�
	public String getArtCode(String artName) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", artName);
	}
	/*
	//��ǰ �ɼ� ���
	public void insertArtOption(WriterArtOptionVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption", vo);
	}
*/
	
	public void insertArtOptionl() {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOptionl");
		
	}

}

package com.web.bomulsum.writer.art.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterArtDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//작품 등록
	public void insertArt(WriterArtVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArt", vo);	
	}
/*	
	//작품 코드 가져오기
	public String getArtCode(String artName) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", artName);
	}
*/	
	//작품정보제공 내용등록
	public void insertArtInfoDetail(WriterArtInfoDetailVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtInfoDetail", vo);
	}
	
	//작품 코드 검색
	public String getArtCode(String artName) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", artName);
	}
	/*
	//작품 옵션 등로
	public void insertArtOption(WriterArtOptionVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption", vo);
	}
*/
	
	public void insertArtOptionl() {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOptionl");
		
	}

}

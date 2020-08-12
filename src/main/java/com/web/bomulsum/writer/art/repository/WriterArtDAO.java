package com.web.bomulsum.writer.art.repository;

import java.util.List;
import java.util.Map;

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
	
	//작품 코드 검색
	public String getArtCode(WriterArtVO vo) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", vo);
	}
	
	//작품 정보 제공 등록
	public void insertArtInfoDetail(WriterArtInfoDetailVO vo) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtInfoDetail", vo);
	}
	
	//작품 옵션 등록
	public void insertArtOption1(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption1", map);
	}
	public void insertArtOption2(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption2", map);
	}
	public void insertArtOption3(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption3", map);
	}
	public void insertArtOption4(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption4", map);
	}	
	public void insertArtOption5(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption5", map);
	}	
	public void insertArtOption6(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption6", map);
	}	
	public void insertArtOption7(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption7", map);
	}	
	public void insertArtOption8(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption8", map);
	}	
	public void insertArtOption9(Map<String, Object> map) {
		sqlSessionTemplate.insert("com.web.bomulsum.writer.art.repository.WriterArtDAO.insertArtOption9", map);
	}

	//판매작품 목록
	public List<WriterArtVO> getArtOnsaleList(String seq) {
		List<WriterArtVO> artList = sqlSessionTemplate.selectList(
				"com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtOnsale", seq);
		return artList;
	}
	
	//즐겨찾기 카운트 
	public int getArtOnsaleBookMark(String artCode) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtOnsaleBookMark", artCode);
	}
	/*
	//댓글 카운트
	public String getArtCode(WriterArtVO vo) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", vo);
	}
	//후기 카운트
	public String getArtCode(WriterArtVO vo) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtCode", vo);
	}
*/
	//판매중 작품 업데이트
	public void updateSalesArt(List<WriterArtVO> list) {
		sqlSessionTemplate.update("com.web.bomulsum.writer.art.repository.WriterArtDAO.updateSalesArt",list);
	}
}
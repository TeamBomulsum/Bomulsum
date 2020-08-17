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
	
	//판매 일시중지 작품 목록
	public List<WriterArtVO> getArtPauseOnsale(String seq) {
		List<WriterArtVO> artList = sqlSessionTemplate.selectList(
				"com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtPauseOnsale", seq);
		return artList;
	}
	
	//즐겨찾기 카운트
	public int getArtSaleBookmark(String artCode) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtSaleBookmark", artCode);
	}
	
	//후기 카운트 
	public int getArtSaleReview(String artCode) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtSaleReview", artCode);
	}
	
	//댓글 카운트
	public int getArtSaleComment(String artCode) {
		return sqlSessionTemplate.selectOne("com.web.bomulsum.writer.art.repository.WriterArtDAO.getArtSaleComment", artCode);
	}
	
	//판매일시중지로 바꾸기
	public void changePauseSalesArt(List<String> checkArr) {
		sqlSessionTemplate.update("com.web.bomulsum.writer.art.repository.WriterArtDAO.pauseSalesArt",checkArr);
	}
	
	//판매중으로 바꾸기
	public void changeStartSalesArt(List<String> checkArr) {
		sqlSessionTemplate.update("com.web.bomulsum.writer.art.repository.WriterArtDAO.startSalesArt",checkArr);
	}
	
	
	
	//작품 삭제
	public void deleteArt(List<String> deleteCheck) {
		sqlSessionTemplate.delete("com.web.bomulsum.writer.art.repository.WriterArtDAO.deleteArt",deleteCheck);
		sqlSessionTemplate.delete("com.web.bomulsum.writer.art.repository.WriterArtDAO.deleteArtDetail",deleteCheck);
		sqlSessionTemplate.delete("com.web.bomulsum.writer.art.repository.WriterArtDAO.deleteArtOption",deleteCheck);
	}

	
	//작품 수정 목록 받아오기
	public List<WriterArtVO> getUpdateArt(String artCode){
		List<WriterArtVO> updateArtList = sqlSessionTemplate.selectList(
				"com.web.bomulsum.writer.art.repository.WriterArtDAO.getUpdateArt", artCode);
		return updateArtList;
	}
	public List<WriterArtInfoDetailVO> getUpdateArtInfo(String artCode){
		List<WriterArtInfoDetailVO> updateArtInfoList = sqlSessionTemplate.selectList(
				"com.web.bomulsum.writer.art.repository.WriterArtDAO.getUpdateArtInfo", artCode);
		return updateArtInfoList;
	}
	public List<WriterArtOptionVO> getUpdateArtOption(String artCode){
		List<WriterArtOptionVO> updateArtOptionList = sqlSessionTemplate.selectList(
				"com.web.bomulsum.writer.art.repository.WriterArtDAO.getUpdateArtOption", artCode);
		return updateArtOptionList;
	}

}
package com.web.bomulsum.writer.art.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.repository.WriterArtVOUP;

public interface WriterArtService {

	//작품 테이블 등록
	void insertArt(WriterArtVO vo);
	
	//작품 코드 가져오기
	String getArtCode(String artName);
	
	//작품정보제공 테이블 등록
	void insertArtInfoDetail(WriterArtInfoDetailVO vo);

	//작품 옵션 등록
	void insertArtOption1(Map<String, Object> map);
	void insertArtOption2(Map<String, Object> map);
	void insertArtOption3(Map<String, Object> map);
	void insertArtOption4(Map<String, Object> map);
	void insertArtOption5(Map<String, Object> map);
	void insertArtOption6(Map<String, Object> map);
	void insertArtOption7(Map<String, Object> map);
	void insertArtOption8(Map<String, Object> map);
	void insertArtOption9(Map<String, Object> map);
	
	//판매중 작품 보기
	List<WriterArtVO> getArtOnsaleList();
	
	
	//판재뭉 작품 검색
	//int getbookMark(String artCodeSeq);
	
	//판매중 작품 업데이트
	void updateSalesArt(List<WriterArtVOUP> list);
}

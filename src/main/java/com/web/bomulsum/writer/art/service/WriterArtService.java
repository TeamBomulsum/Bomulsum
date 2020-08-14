package com.web.bomulsum.writer.art.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface WriterArtService {

	//작품 등록
	void insertArt(WriterArtVO vo);
	
	//작품 코드 검색
	String getArtCode(WriterArtVO vo);
	
	//작품정보제공등록
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
	
	//판매중 작품 목록
	List<WriterArtVO> getArtOnsaleList(String seq);
	//댓글 카운트
	int getArtOnsaleComment(String artCode);
	//후기 카운트
	int getArtOnsaleReview(String artCode);
	//즐겨찾기 카운트
	int getArtOnsaleBookmark(String artCode);
	
	
	//판매중 작품 업데이트
	void updateSalesArt(String[] checkArr);
	//작품 삭제
	void deleteSalesArt(String[] deleteCheck);

	//작품 정렬
	List<WriterArtVO> getSortList(Map<String, Object> map);
}

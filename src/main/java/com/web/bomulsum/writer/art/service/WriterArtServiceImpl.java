package com.web.bomulsum.writer.art.service;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.art.repository.WriterArtDAO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;


@Service
public class WriterArtServiceImpl implements WriterArtService{

	 @Autowired
	 WriterArtDAO dao;

	//작품 기본정보 등록 
	@Override
	public void insertArt(WriterArtVO vo) {
		// TODO Auto-generated method stub
		dao.insertArt(vo);
	}
	//작품 코드 검색
	@Override
	public String getArtCode(WriterArtVO vo) {
		return dao.getArtCode(vo);
	}
	
	//작품 상세정보 등록
	@Override
	public void insertArtInfoDetail(WriterArtInfoDetailVO vo) {
		dao.insertArtInfoDetail(vo);	
	}

	//옵션 등록
	@Override
	public void insertArtOption1(Map<String, Object> map) {
		dao.insertArtOption1(map);	
	}

	@Override
	public void insertArtOption2(Map<String, Object> map) {
		dao.insertArtOption2(map);
	}
	

	@Override
	public void insertArtOption3(Map<String, Object> map) {
		dao.insertArtOption3(map);	
	}

	@Override
	public void insertArtOption4(Map<String, Object> map) {
		dao.insertArtOption4(map);
	}

	@Override
	public void insertArtOption5(Map<String, Object> map) {
		dao.insertArtOption5(map);
	}

	@Override
	public void insertArtOption6(Map<String, Object> map) {
		dao.insertArtOption6(map);
	}

	@Override
	public void insertArtOption7(Map<String, Object> map) {
		dao.insertArtOption7(map);
	}

	@Override
	public void insertArtOption8(Map<String, Object> map) {
		dao.insertArtOption8(map);
	}

	@Override
	public void insertArtOption9(Map<String, Object> map) {
		dao.insertArtOption9(map);
	}

	//판매중 작품 가져오기
	@Override
	public List<WriterArtVO> getArtOnsaleList(String seq) {
		return dao.getArtOnsaleList(seq);
	}
	@Override
	public int getArtOnsaleReview(String artCode) {
		return dao.getArtOnsaleReview(artCode);
	}

	@Override
	public int getArtOnsaleComment(String artCode) {
		return dao.getArtOnsaleComment(artCode);
	}

	@Override
	public int getArtOnsaleBookmark(String artCode) {
		return dao.getArtOnsaleBookmark(artCode);
	}

	//판매 일시중지
	@Override
	public void updateSalesArt(String[] checkArr) {
		List<String> list = new ArrayList<String>();
		
		for(int i=0; i<checkArr.length; i++) {
			list.add(checkArr[i]);
		}
		dao.updateSalesArt(list);
	}

	
	//작품 삭제
	@Override
	public void deleteSalesArt(String[] deleteCheck) {
		List<String> list = new ArrayList<String>();
		
		for(int i=0; i<deleteCheck.length; i++) {
			list.add(deleteCheck[i]);
		}
		dao.deleteArt(list);
		
	}
	
	//작품 정렬
	@Override
	public List<WriterArtVO> getSortList(Map<String, Object> map) {
		return dao.getSortList(map);
	}
	

}

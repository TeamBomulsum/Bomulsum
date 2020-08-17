package com.web.bomulsum.writer.art.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.art.repository.WriterArtDAO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
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
	public int getArtSaleReview(String artCode) {
		return dao.getArtSaleReview(artCode);
	}

	@Override
	public int getArtSaleComment(String artCode) {
		return dao.getArtSaleComment(artCode);
	}

	@Override
	public int getArtSaleBookmark(String artCode) {
		return dao.getArtSaleBookmark(artCode);
	}

	//판매 일시중지로 바꾸기
	@Override
	public void changePauseSalesArt(String[] checkArr) {
		List<String> list = new ArrayList<String>();
		
		for(int i=0; i<checkArr.length; i++) {
			list.add(checkArr[i]);
		}
		dao.changePauseSalesArt(list);
	}
	
	//판매중으로 바꾸기
	@Override
	public void changeStartSalesArt(String[] checkArr) {
		List<String> list = new ArrayList<String>();
		
		for(int i=0; i<checkArr.length; i++) {
			list.add(checkArr[i]);
		}
		dao.changeStartSalesArt(list);
	}


	
	//작품 삭제
	@Override
	public void deleteArt(String[] deleteCheck) {
		List<String> list = new ArrayList<String>();
		
		for(int i=0; i<deleteCheck.length; i++) {
			list.add(deleteCheck[i]);
		}
		dao.deleteArt(list);
		
	}

	//판매 일시중지 작품 목록
	@Override
	public List<WriterArtVO> getArtPauseOnsale(String seq) {
		return dao.getArtPauseOnsale(seq);
	}
	
	//수정 작품 목록
	@Override
	public List<WriterArtVO> getUpdateArt(String artCode) {
		return dao.getUpdateArt(artCode);
	}
	@Override
	public List<WriterArtInfoDetailVO> getUpdateArtInfo(String artCode) {
		return dao.getUpdateArtInfo(artCode);
	}
	@Override
	public List<WriterArtOptionVO> getUpdateArtOption(String artCode) {
		return dao.getUpdateArtOption(artCode);
	}
	

}

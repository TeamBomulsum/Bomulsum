package com.web.bomulsum.user.myinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.myinfo.repository.MyInfoArticleVO;
import com.web.bomulsum.user.myinfo.repository.UserMyInfoDAO;
import com.web.bomulsum.user.myinfo.repository.WriterInfoArticleVO;

@Service
public class UserMyInfoServiceImpl implements UserMyInfoService{

	@Autowired
	private UserMyInfoDAO dao;
	
	// 쿠폰 개수 가져오기
	public int getCouponCount(String member) {
		return dao.getCouponCount(member);
	}
	
	// 좋아하는 작품 코드들 가져오기
	@Override
	public List<String> getLikeList(String member) {
		return dao.getLikeList(member);
	}
	
	// 좋아하는 작품 코드 기반 좋아하는 작품들 가져오기
	@Override
	public MyInfoArticleVO getLikeArticle(String artCode) {
		return dao.getLikeArticle(artCode);
	}

	// 최신 본 작품
	@Override
	public List<String> getRecentlyArt(String member) {
		return dao.getRecentlyArt(member);
	}

	// 좋아하는 작가
	@Override
	public String getLikeWriter(String member) {
		return dao.getLikeWriter(member);
	}

	// 좋아하는 작가 정보
	@Override
	public List<WriterInfoArticleVO> getWriterInfo(String writerCode) {
		return dao.getWriterInfo(writerCode);
	}
	
}

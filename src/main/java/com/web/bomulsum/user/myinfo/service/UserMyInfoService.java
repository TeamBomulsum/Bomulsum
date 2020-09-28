package com.web.bomulsum.user.myinfo.service;

import java.util.List;

import com.web.bomulsum.user.myinfo.repository.MyInfoArticleVO;
import com.web.bomulsum.user.myinfo.repository.WriterInfoArticleVO;

public interface UserMyInfoService {
	
	// 쿠폰 개수 가져오기
	int getCouponCount(String member);
	
	// 좋아하는 작품 코드들 가져오기
	List<String> getLikeList(String member);
	
	// 좋아하는 작품 코드 기반 좋아하는 작품들 가져오기
	MyInfoArticleVO getLikeArticle(String artCode);
	
	// 최신 본 작품
	List<String> getRecentlyArt(String member);
	
	// 좋아하는 작가
	String getLikeWriter(String member);
	
	// 좋아하는 작가 정보
	List<WriterInfoArticleVO> getWriterInfo(String writerCode);
}

package com.web.bomulsum.user.myinfo.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserMyInfoDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	// 쿠폰 개수 가져오기
	public int getCouponCount(String member) {
		return temp.selectOne("MyInfo.getCouponCount", member);
	}
	
	// 좋아하는 작품 코드들 가져오기
	public List<String> getLikeList(String member){
		return temp.selectList("MyInfo.getLikeList", member);
	}
	
	// 최신 본 작품
	public List<String> getRecentlyArt(String member){
		return temp.selectList("MyInfo.getRecentlyArt", member);
	}
	
	// 좋아하는 작가
	public String getLikeWriter(String member){
		return temp.selectOne("MyInfo.getLikeWriter", member);
	}
	
	// 좋아하는 작가 정보
	public List<WriterInfoArticleVO> getWriterInfo(String writerCode) {
		return temp.selectList("MyInfo.getWriterInfo", writerCode);
	}
	
	// 좋아하는 작품 코드 기반 좋아하는 작품들 가져오기
	public MyInfoArticleVO getLikeArticle(String artCode){
		return temp.selectOne("MyInfo.getLikeArticle", artCode);
	}

}

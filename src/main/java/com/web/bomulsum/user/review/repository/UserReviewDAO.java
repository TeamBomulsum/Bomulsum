package com.web.bomulsum.user.review.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//후기 등록할 수 있는 목록 불러오기
	public List<UserReviewVO> myReview(String seq){
		return sqlSessionTemplate.selectList("userReviewDAO.reviewList", seq);
	}
	//작성한 후기 목록 불러오기
	public List<UserReviewVO> myReviewed(String seq){
		return sqlSessionTemplate.selectList("userReviewDAO.reviewedList", seq);
	}
	
	
	//구매 후기 등록
	public void insertReview(UserReviewVO vo) {
		sqlSessionTemplate.insert("userReviewDAO.reviewReg", vo);
	}
	//구매 후기 수정
	public void updateReview(UserReviewVO vo) {
		sqlSessionTemplate.update("userReviewDAO.updateReview", vo);
	}
	
	
	
	//알람 등록
	public void insertAlarmTb(UserReviewVO vo) {
		sqlSessionTemplate.insert("userReviewDAO.insertAlarmTb", vo);
	}
	//구매내역테이블 업데이트
	public void updateBuyArtTb(UserReviewVO vo) {
		sqlSessionTemplate.insert("userReviewDAO.updateBuyArtTb", vo);
	}
	public void updateBuyArtTb2(UserReviewVO vo) {
		sqlSessionTemplate.update("userReviewDAO.updateBuyArtTb2", vo);
	}

}

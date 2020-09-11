package com.web.bomulsum.user.review.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//리뷰 목록 불러오기
	public List<UserReviewVO> myReview(String seq){
		return sqlSessionTemplate.selectList("userReviewDAO.reviewList", seq);
	}
	
	//구매 후기 등록
	public void insertReview(UserReviewVO vo) {
		sqlSessionTemplate.insert("userReviewDAO.reviewReg", vo);
	}
}

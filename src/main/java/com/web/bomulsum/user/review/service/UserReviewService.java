package com.web.bomulsum.user.review.service;

import java.util.List;

import com.web.bomulsum.user.review.repository.UserReviewVO;

public interface UserReviewService {

	
	List<UserReviewVO> myReview(String seq);
	List<UserReviewVO> myReviewed(String seq);
	
	void insertReview(UserReviewVO vo);
	void insertAlarmTb(UserReviewVO vo);
	void updateBuyArtTb(UserReviewVO vo);
	
}

package com.web.bomulsum.user.review.service;

import java.util.List;

import com.web.bomulsum.user.review.repository.UserReviewVO;

public interface UserReviewService {

	
	List<UserReviewVO> myReview(String seq);
	
	void insertReview(UserReviewVO vo);
	
	void insertAlarm(UserReviewVO vo);
}

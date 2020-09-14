package com.web.bomulsum.user.review.service;

import java.util.List;

import com.web.bomulsum.user.review.repository.UserReviewPagingVO;
import com.web.bomulsum.user.review.repository.UserReviewVO;

public interface UserReviewService {

	
	List<UserReviewVO> myReview(UserReviewPagingVO vo);
	List<UserReviewVO> myReviewed(UserReviewPagingVO vo);
	
	void insertReview(UserReviewVO vo);
	void insertAlarmTb(UserReviewVO vo);
	void updateBuyArtTb(UserReviewVO vo);
	
	int getReviewCount(UserReviewPagingVO vo);
	int getReviewedCount(UserReviewPagingVO vo);
}

package com.web.bomulsum.user.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.review.repository.UserReviewDAO;
import com.web.bomulsum.user.review.repository.UserReviewVO;

@Service
public class UserReviewServiceImpl implements UserReviewService {

	@Autowired
	private UserReviewDAO dao;
	
	//내가 쓸 수 있는 구매후기 목록
	@Override
	public List<UserReviewVO> myReview(String seq) {
		return dao.myReview(seq);
	}
	//내가 쓴 구매후기 목록
	@Override
	public List<UserReviewVO> myReviewed(String seq) {
		return dao.myReviewed(seq);
	}

	//구매 후기 글 등록
	@Override
	public void insertReview(UserReviewVO vo) {
		dao.insertReview(vo);
	}

	//알람 등록
	@Override
	public void insertAlarmTb(UserReviewVO vo) {
		dao.insertAlarmTb(vo);
	}
	
	//구매작품 테이블 구매후기 상태 수정
	@Override
	public void updateBuyArtTb(UserReviewVO vo) {
		dao.updateBuyArtTb(vo);
	}


}

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
	
	@Override
	public List<UserReviewVO> myReview(String seq) {
		return dao.myReview(seq);
	}

	@Override
	public void insertReview(UserReviewVO vo) {
		dao.insertReview(vo);
	}

	@Override
	public void insertAlarm(UserReviewVO vo) {
//		dao.insertAlarm(vo);
	}

}

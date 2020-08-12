package com.web.bomulsum.user.board.service;

import java.util.List;

import com.web.bomulsum.user.board.repository.UserBoardCouponVO;
import com.web.bomulsum.user.board.repository.UserBoardNoticeVO;
import com.web.bomulsum.user.board.repository.UserCouponVo;

public interface UserBoardService {
	List<UserBoardNoticeVO> getBoardTitles();
	UserBoardCouponVO getCoupon(String seq);
	UserBoardNoticeVO getDetail(String seq);
	void insertCoupon(UserCouponVo vo); 
	int couponOverRap(UserCouponVo vo);
	List<UserBoardNoticeVO> getQuestionTitles();
}

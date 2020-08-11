package com.web.bomulsum.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.board.repository.UserBoardCouponVO;
import com.web.bomulsum.user.board.repository.UserBoardDAO;
import com.web.bomulsum.user.board.repository.UserBoardNoticeVO;
import com.web.bomulsum.user.board.repository.UserCouponVo;

@Service
public class UserBoardServiceImpl implements UserBoardService{
	
	@Autowired
	private UserBoardDAO dao;

	@Override
	public List<UserBoardNoticeVO> getBoardTitles() {
		return dao.getBoardTitles();
	}

	@Override
	public UserBoardCouponVO getCoupon(String seq) {
		return dao.getCoupon(seq);
	}

	@Override
	public UserBoardNoticeVO getDetail(String seq) {
		return dao.getDetail(seq);
	}

	@Override
	public void insertCoupon(UserCouponVo vo) {
		dao.insertCoupon(vo);
	}

	@Override
	public int couponOverRap(UserCouponVo vo) {
		UserCouponVo uVo = new UserCouponVo();
		uVo.setMemberCodeSeq(vo.getMemberCodeSeq());
		uVo.setCouponName(vo.getCouponName());
		uVo.setCouponContent(vo.getCouponContent());
		uVo.setCouponPrice(vo.getCouponPrice());
		return dao.couponOverRap(uVo);
	}

}

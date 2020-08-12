package com.web.bomulsum.user.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<UserBoardNoticeVO> getBoardTitles(){
		return sqlSessionTemplate.selectList("userBoardDAO.getNoticeTitle");
	}
	
	public List<UserBoardNoticeVO> getQuestionTitles(){
		return sqlSessionTemplate.selectList("userBoardDAO.getQuestionTitle");
	}
	
	// 쿠폰 정보 끌어오기
	public UserBoardCouponVO getCoupon(String seq) {
		String coupon = sqlSessionTemplate.selectOne("userBoardDAO.getCoupon", seq);
		UserBoardCouponVO vo = new UserBoardCouponVO(coupon);
		return vo;
	}
	
	// 공지사항 및 이벤트 자세히보기
	public UserBoardNoticeVO getDetail(String seq) {
		return sqlSessionTemplate.selectOne("userBoardDAO.getNoticeDetail", seq);
	}
	
	// 쿠폰 insert
	public void insertCoupon(UserCouponVo vo) {
		sqlSessionTemplate.insert("userBoardDAO.insertCoupon", vo);
	}
	
	// 쿠폰 중복 확인
	public int couponOverRap(UserCouponVo vo) {
		return sqlSessionTemplate.selectOne("userBoardDAO.couponOverRap", vo);
	}
	
}

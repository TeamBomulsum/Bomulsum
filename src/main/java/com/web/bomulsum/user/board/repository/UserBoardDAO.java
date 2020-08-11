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
	
	// �������� �̾ƿ���
	public UserBoardCouponVO getCoupon(String seq) {
		String coupon = sqlSessionTemplate.selectOne("userBoardDAO.getCoupon", seq);
		UserBoardCouponVO vo = new UserBoardCouponVO(coupon);
		return vo;
	}
	
	// �������� ��������
	public UserBoardNoticeVO getDetail(String seq) {
		return sqlSessionTemplate.selectOne("userBoardDAO.getNoticeDetail", seq);
	}
	
	// ���� insert
	public void insertCoupon(UserCouponVo vo) {
		sqlSessionTemplate.insert("userBoardDAO.insertCoupon", vo);
	}
	
	// ���� �ߺ� Ȯ��
	public int couponOverRap(UserCouponVo vo) {
		return sqlSessionTemplate.selectOne("userBoardDAO.couponOverRap", vo);
	}
	
}

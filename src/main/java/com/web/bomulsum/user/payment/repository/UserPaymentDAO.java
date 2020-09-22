package com.web.bomulsum.user.payment.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bomulsum.user.order.repository.UserShopbagVO;

@Repository
public class UserPaymentDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	// 장바구니 정보
	public List<UserPaymentVO> selectCartChoice(HashMap<String, Object> map) {
		List<UserPaymentVO> shopbagInfo = sqlSessionTemplate.selectList("paymentDAO.selectCartChoice", map);
		System.out.println(shopbagInfo);
		return shopbagInfo;

	}

	public List<UserCouponPaymentVO> selectCouponPayment(String memberCode){
		return sqlSessionTemplate.selectList("paymentDAO.selectCouponPayment", memberCode);
	}
}

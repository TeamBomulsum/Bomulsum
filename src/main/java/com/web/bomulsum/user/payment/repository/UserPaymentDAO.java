package com.web.bomulsum.user.payment.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


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
	// 선택한쿠폰
	public List<UserCouponPaymentVO> selectCouponPayment(String memberCode){
		return sqlSessionTemplate.selectList("paymentDAO.selectCouponPayment", memberCode);
	}
	
	/* 주문내역테이블에 인서트 */
	public String insertOrderList(HashMap<String,Object> map) {
		sqlSessionTemplate.insert("paymentDAO.insertOrderList",map);
		return String.valueOf(map.get("OrdCode"));
	}
	
	/* 구매작가테이블에 인서트 */
	public String insertOrderWriter(HashMap<String,Object> map) {
		sqlSessionTemplate.insert("paymentDAO.insertOrderWriter",map);
		return String.valueOf(map.get("OrdWriterCode"));
	}
	
	/* 구매작품테이블에 인서트 */
	public String insertOrderArt(HashMap<String,Object> map) {
		sqlSessionTemplate.insert("paymentDAO.insertOrderArt",map);
		return String.valueOf(map.get("OrdArtCode"));
	}
	
	/* 옵션테이블에 인서트 */
	public String insertOrderArtOption(HashMap<String,Object> map) {
		sqlSessionTemplate.insert("paymentDAO.insertOrderArtOption",map);
		return String.valueOf(map.get("OrdOptionCode"));
	}
}

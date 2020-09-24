package com.web.bomulsum.user.payment.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;
import com.web.bomulsum.user.payment.repository.UserPaymentVO;

public interface UserPaymentService {
	List<UserPaymentVO> selectCartChoice(HashMap<String, Object> map);
	
	//쿠폰
	List<UserCouponPaymentVO> selectCouponPayment(String memberCode);
	
	//주문테이블에 인서트
	String insertOrderList(HashMap<String,Object> map);
	
	//구매작가 테이블에 인서트
	String insertOrderWriter(HashMap<String,Object> map);
	
	//구매작품 테이블에 인서트
	String insertOrderArt(HashMap<String,Object> map);
	
	//구매옵션 테이블에 인서트
	String insertOrderArtOption(HashMap<String,Object> map);
}

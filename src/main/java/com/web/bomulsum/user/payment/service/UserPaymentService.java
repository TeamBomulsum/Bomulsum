package com.web.bomulsum.user.payment.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;
import com.web.bomulsum.user.payment.repository.UserPaymentVO;

public interface UserPaymentService {
	List<UserPaymentVO> selectCartChoice(HashMap<String, Object> map);
	
	//쿠폰
	List<UserCouponPaymentVO> selectCouponPayment(String memberCode);
}

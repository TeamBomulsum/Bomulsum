package com.web.bomulsum.user.payment.service;

import java.util.List;

import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;

public interface UserPaymentService {
	List<UserShopbagVO> selectCartChoice(String memberCode);
	
	//쿠폰
	List<UserCouponPaymentVO> selectCouponPayment(String memberCode);
}

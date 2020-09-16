package com.web.bomulsum.user.payment.service;

import java.util.List;

import com.web.bomulsum.user.order.repository.UserShopbagVO;

public interface UserPaymentService {
	List<UserShopbagVO> selectCartChoice(String memberCode);
}

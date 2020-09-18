package com.web.bomulsum.user.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;
import com.web.bomulsum.user.payment.repository.UserPaymentDAO;

@Service
public class UserPaymentServiceImpl implements UserPaymentService{

	@Autowired
	UserPaymentDAO dao;

	@Override
	public List<UserShopbagVO> selectCartChoice(String memberCode) {
		return dao.selectCartChoice(memberCode);
	}

	@Override
	public List<UserCouponPaymentVO> selectCouponPayment(String memberCode) {
		return dao.selectCouponPayment(memberCode);
	}
}

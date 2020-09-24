package com.web.bomulsum.user.payment.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;
import com.web.bomulsum.user.payment.repository.UserPaymentDAO;
import com.web.bomulsum.user.payment.repository.UserPaymentVO;

@Service
public class UserPaymentServiceImpl implements UserPaymentService{

	@Autowired
	UserPaymentDAO dao;

	@Override
	public List<UserPaymentVO> selectCartChoice(HashMap<String, Object> map) {
		return dao.selectCartChoice(map);
	}

	@Override
	public List<UserCouponPaymentVO> selectCouponPayment(String memberCode) {
		return dao.selectCouponPayment(memberCode);
	}

	@Override
	public String insertOrderList(HashMap<String, Object> map) {
		return dao.insertOrderList(map);
	}

	@Override
	public String insertOrderWriter(HashMap<String, Object> map) {
		return dao.insertOrderWriter(map);
	}

	@Override
	public String insertOrderArt(HashMap<String, Object> map) {
		return dao.insertOrderArt(map);
	}

	@Override
	public String insertOrderArtOption(HashMap<String, Object> map) {
		return dao.insertOrderArtOption(map);
	}
}

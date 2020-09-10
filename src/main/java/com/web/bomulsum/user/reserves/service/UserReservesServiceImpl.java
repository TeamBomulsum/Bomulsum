package com.web.bomulsum.user.reserves.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.reserves.repository.UserReservesDAO;
import com.web.bomulsum.user.reserves.repository.UserReservesVO;

@Service
public class UserReservesServiceImpl implements UserReservesService{
	@Autowired
	UserReservesDAO dao;

	@Override
	public List<UserReservesVO> getUserPoint() { //이용내역
		return dao.getUserPoint();
	}
	
	
	@Override
	public int getUserPointUse() {	//총 사용 포인트
		return dao.getUserPointUse();
	}


	@Override
	public int getUserSumReserves() { //총 적립된 포인트 : 환불제외, 1년이내, '적립'
		return dao.getUserSumReserves();
	}
}

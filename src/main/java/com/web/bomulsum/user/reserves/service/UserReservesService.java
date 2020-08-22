package com.web.bomulsum.user.reserves.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.user.reserves.repository.UserReservesVO;

public interface UserReservesService {
	List<UserReservesVO> getUserPoint();
	int getUserPointUse();
	int getUserSumReserves();
}

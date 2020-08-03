package com.web.bomulsum.manager.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.manager.board.repository.MBoardDAO;
import com.web.bomulsum.manager.board.repository.MBoardListVO;
import com.web.bomulsum.manager.board.repository.MBoardVO;

@Service
public class MBoardServiceImpl implements MBoardService {
	/*
	 * 여기서 서비스 인터페이스를 상속받아서,
	 * 형변환이라던지 데이터를 가공해야 할 필요가 있을 경우 처리를 해준다.
	 */
	
	@Autowired
	private MBoardDAO dao;

	@Override
	public void mboardRegister(MBoardVO vo) {
		String coupon = vo.getAdminNoticeCoupon();
		coupon = coupon.replace(",", "-");
		System.out.println("변환 후 : " + coupon);
		vo.setAdminNoticeCoupon(coupon);
		dao.mboardRegister(vo);
	}

	@Override
	public List<MBoardListVO> mboardList() {
		return dao.mboardList();
	}
	
	
}

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

	//글 목록 보기 위한 데이터 불러오기
	@Override
	public List<MBoardListVO> mboardList() {
		return dao.mboardList();
	}

	//선택된 글 정보를 불러오기
	@Override
	public MBoardVO mboardSelect(MBoardVO vo) {
		return dao.mboardSelectOne(vo);
	}

	//글 수정 반영
	@Override
	public void mboardUpdate(MBoardVO vo) {
		String coupon = vo.getAdminNoticeCoupon();
		coupon = coupon.replace(",", "-");
		System.out.println("변환 후  쿠폰 값: " + coupon);
		vo.setAdminNoticeCoupon(coupon);
		dao.mboardUpdate(vo);
	}

	//글 삭제 하기
	@Override
	public void mboardDelete(MBoardVO vo) {
		System.out.println("여기까지 들어왔나요? serviceImpl : " + vo.getAdminNoticeSeq());
		dao.mboardDelete(vo);
	}
	
}

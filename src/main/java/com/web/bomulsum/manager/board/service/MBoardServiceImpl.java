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
	 * ���⼭ ���� �������̽��� ��ӹ޾Ƽ�,
	 * ����ȯ�̶���� �����͸� �����ؾ� �� �ʿ䰡 ���� ��� ó���� ���ش�.
	 */
	
	@Autowired
	private MBoardDAO dao;

	@Override
	public void mboardRegister(MBoardVO vo) {
		String coupon = vo.getAdminNoticeCoupon();
		coupon = coupon.replace(",", "-");
		System.out.println("��ȯ �� : " + coupon);
		vo.setAdminNoticeCoupon(coupon);
		dao.mboardRegister(vo);
	}

	//�� ��� ���� ���� ������ �ҷ�����
	@Override
	public List<MBoardListVO> mboardList() {
		return dao.mboardList();
	}

	//���õ� �� ������ �ҷ�����
	@Override
	public MBoardVO mboardSelect(MBoardVO vo) {
		return dao.mboardSelectOne(vo);
	}

	//�� ���� �ݿ�
	@Override
	public void mboardUpdate(MBoardVO vo) {
		String coupon = vo.getAdminNoticeCoupon();
		coupon = coupon.replace(",", "-");
		System.out.println("��ȯ ��  ���� ��: " + coupon);
		vo.setAdminNoticeCoupon(coupon);
		dao.mboardUpdate(vo);
	}

	//�� ���� �ϱ�
	@Override
	public void mboardDelete(MBoardVO vo) {
		System.out.println("������� ���Գ���? serviceImpl : " + vo.getAdminNoticeSeq());
		dao.mboardDelete(vo);
	}
	
}

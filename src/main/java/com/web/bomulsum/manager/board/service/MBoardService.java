package com.web.bomulsum.manager.board.service;

import java.util.List;

import com.web.bomulsum.manager.board.repository.MBoardListVO;
import com.web.bomulsum.manager.board.repository.MBoardVO;

public interface MBoardService {

	//������ �Խ��� �� ��� ���
	void mboardRegister(MBoardVO vo);
	
	//������ �Խ��� �� ��� �ҷ����� ���
	List<MBoardListVO> mboardList();
	
	//�� ������ ���� ���� �� ���� �ҷ����� ���
	MBoardVO mboardSelect(MBoardVO vo);
	
	//�� ���� �ݿ�
	void mboardUpdate(MBoardVO vo);
	
	//�� ���� �ݿ�
	void mboardDelete(MBoardVO vo);
}

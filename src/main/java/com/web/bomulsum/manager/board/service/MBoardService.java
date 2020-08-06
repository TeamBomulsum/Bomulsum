package com.web.bomulsum.manager.board.service;

import java.util.List;

import com.web.bomulsum.manager.board.repository.MBoardListVO;
import com.web.bomulsum.manager.board.repository.MBoardVO;

public interface MBoardService {

	//관리자 게시판 글 등록 기능
	void mboardRegister(MBoardVO vo);
	
	//관리자 게시판 글 목록 불러오기 기능
	List<MBoardListVO> mboardList();
	
	//글 수정을 위한 선택 글 내용 불러오기 기능
	MBoardVO mboardSelect(MBoardVO vo);
	
	//글 수정 반영
	void mboardUpdate(MBoardVO vo);
	
	//글 삭제 반영
	void mboardDelete(MBoardVO vo);
}

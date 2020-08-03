package com.web.bomulsum.writer.board.service;

import java.util.List;

import com.web.bomulsum.writer.board.repository.writerBoardVO;

public interface writerBoardService {

	//게시판 목록 getAnnouncementBoard
	List<writerBoardVO> getAnnouncementBoard();
	
	//게시판 내용 getAnnouncementArticle
	writerBoardVO getAnnouncementArticle(String admin_notice_seq);
	
}

package com.web.bomulsum.writer.board.service;

import java.util.List;

import com.web.bomulsum.writer.board.repository.writerBoardVO;

public interface writerBoardService {

	//�Խ��� ��� getAnnouncementBoard
	List<writerBoardVO> getAnnouncementBoard();
	
	//�Խ��� ���� getAnnouncementArticle
	writerBoardVO getAnnouncementArticle(String admin_notice_seq);
	
}

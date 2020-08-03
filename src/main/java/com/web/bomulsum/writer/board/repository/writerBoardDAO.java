package com.web.bomulsum.writer.board.repository;

import java.util.List;


public interface writerBoardDAO {

	List<writerBoardVO> getAnnouncementBoard();
	
	writerBoardVO getAnnouncementArticle(String admin_notice_seq);
}


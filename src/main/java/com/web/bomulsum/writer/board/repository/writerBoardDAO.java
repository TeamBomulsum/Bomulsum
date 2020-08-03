package com.web.bomulsum.writer.board.repository;

import java.util.List;

public interface writerBoardDAO {	
	//게시판 목록
	List<writerBoardVO> getPolicyGuideBoard();
	
	//게시판 내용 
	writerBoardVO getPolicyGuideArticle(String admin_notice_seq);
}

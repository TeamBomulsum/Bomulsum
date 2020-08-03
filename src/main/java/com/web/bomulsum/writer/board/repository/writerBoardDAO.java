package com.web.bomulsum.writer.board.repository;

import java.util.List;

public interface writerBoardDAO {
	//게시판 목록 getQuestionBoard
	List<writerBoardVO> getQuestionBoard();
	
	//게시판 내용 getQuestionArticle
	writerBoardVO getQuestionArticle(String admin_notice_seq);

}

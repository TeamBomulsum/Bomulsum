package com.web.bomulsum.writer.board.repository;

import java.util.List;

public interface writerBoardDAO {
	//�Խ��� ��� getQuestionBoard
	List<writerBoardVO> getQuestionBoard();
	
	//�Խ��� ���� getQuestionArticle
	writerBoardVO getQuestionArticle(String admin_notice_seq);

}

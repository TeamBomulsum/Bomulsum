package com.web.bomulsum.writer.board.repository;

import java.util.List;

public interface writerBoardDAO {	
	//�Խ��� ���
	List<writerBoardVO> getPolicyGuideBoard();
	
	//�Խ��� ���� 
	writerBoardVO getPolicyGuideArticle(String admin_notice_seq);
}

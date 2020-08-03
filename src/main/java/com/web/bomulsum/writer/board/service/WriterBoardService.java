package com.web.bomulsum.writer.board.service;

import java.util.List;

import com.web.bomulsum.writer.board.repository.writerBoardVO;

public interface WriterBoardService {
   //�۰� �Խ��� �� ��� �˻�
   List<writerBoardVO> getPolicyGuideBoard();
   
   //�۰� �� ��
   writerBoardVO getPolicyGuideArticle(String admin_notice_seq);
   List<writerBoardVO> getQuestionBoard();
   
   writerBoardVO getQuestionArticle(String admin_notice_seq);
   
   List<writerBoardVO> getAnnouncementBoard();
   
   writerBoardVO getAnnouncementArticle(String admin_notice_seq);

}

package com.web.bomulsum.writer.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.board.repository.writerBoardDAO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;

@Service
public class WriterBoardServiceImpl implements WriterBoardService{
	@Autowired
	writerBoardDAO dao;
	

	@Override
	public List<writerBoardVO> getPolicyGuideBoard() {
		List<writerBoardVO> list = dao.getPolicyGuideBoard();
		return list;
	}


	@Override
	public writerBoardVO getPolicyGuideArticle(String admin_notice_seq) {
		return dao.getPolicyGuideArticle(admin_notice_seq);
	}
}


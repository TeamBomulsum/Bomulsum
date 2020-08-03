package com.web.bomulsum.writer.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.board.repository.writerBoardDAO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;


@Service
public class writerBoardServiceImpl implements writerBoardService{

	@Autowired
	writerBoardDAO dao;

	@Override
	public List<writerBoardVO> getAnnouncementBoard() {
		List<writerBoardVO> list = dao.getAnnouncementBoard();
		return list;
	}

	@Override
	public writerBoardVO getAnnouncementArticle(String admin_notice_seq) {
		
		return dao.getAnnouncementArticle(admin_notice_seq);
	}

	
	

	
}

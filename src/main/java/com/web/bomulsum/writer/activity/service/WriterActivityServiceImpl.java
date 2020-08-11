package com.web.bomulsum.writer.activity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.manager.board.repository.MBoardVO;
import com.web.bomulsum.writer.activity.repository.CommentsListDAO;
import com.web.bomulsum.writer.activity.repository.CommentsListVO;

@Service
public class WriterActivityServiceImpl implements WriterActivityService {

	@Autowired
	private CommentsListDAO dao;
	
	@Override
	public List<CommentsListVO> commentsList() {
		return dao.commentsList();
	}

	@Override
	public void addRecomment(CommentsListVO vo) {
		dao.addRecomment(vo);
	}
}

package com.web.bomulsum.writer.board.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bomulsum.writer.board.repository.writerBoardDAO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;

@Repository
public class writerBoardDAOImpl implements writerBoardDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<writerBoardVO> getAnnouncementBoard() {
		List<writerBoardVO> list = session.selectList("com.web.bomulsum.writer.board.repository.writerBoardDAO.getAnnouncementBoard");
		System.out.println(list);
		return list;
	}

	@Override
	public writerBoardVO getAnnouncementArticle(String admin_notice_seq) {
		writerBoardVO article = session.selectOne(
				"com.web.bomulsum.writer.board.repository.writerBoardDAO.getAnnouncementArticle"
				, admin_notice_seq);
		return article;
	}

	

}

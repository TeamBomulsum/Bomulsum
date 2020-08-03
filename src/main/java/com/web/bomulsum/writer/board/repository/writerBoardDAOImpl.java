package com.web.bomulsum.writer.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class writerBoardDAOImpl implements writerBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<writerBoardVO> getQuestionBoard() {
		List<writerBoardVO> list = sqlSessionTemplate.selectList("com.web.bomulsum.writer.board.repository.writerBoardDAO.getQuestionBoard");
		return list;
	}

	@Override
	public writerBoardVO getQuestionArticle(String admin_notice_seq) {
		writerBoardVO article = sqlSessionTemplate.selectOne("com.web.bomulsum.writer.board.repository.writerBoardDAO.getQuestionArticle", admin_notice_seq);
		return article;
	}
	
}



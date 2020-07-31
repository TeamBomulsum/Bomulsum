package com.web.bomulsum.writer.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class writerBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<writerBoardVO> getWriterBoardList(writerBoardVO vo) {
		System.out.println("--> writerBoardVO :  select() ÇßÀ½ ");
		return sqlSessionTemplate.selectList("writerBoardDAO.getBoardList",vo);
	}
}


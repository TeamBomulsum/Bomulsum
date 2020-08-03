package com.web.bomulsum.manager.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void mboardRegister(MBoardVO vo) {
		sqlSessionTemplate.insert("mBoardDAO.insertMBoard", vo);
	}
	
	public List<MBoardListVO> mboardList(){
		return sqlSessionTemplate.selectList("mBoardDAO.selectMBoard");
	}
	
}

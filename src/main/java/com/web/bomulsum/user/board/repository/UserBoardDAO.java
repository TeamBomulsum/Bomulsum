package com.web.bomulsum.user.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<UserBoardNoticeVO> getBoardTitles(){
		return sqlSessionTemplate.selectList("userBoardDAO.getNoticeTitle");
	}
	
}

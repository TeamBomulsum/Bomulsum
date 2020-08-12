package com.web.bomulsum.user.message.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NodeDbDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<NodeDbVO> getTable() {
		return sqlSessionTemplate.selectList("NodeDbDAO.getMessage");
	}
	
	public List<String> getUserCodes() {
		return sqlSessionTemplate.selectList("NodeDbDAO.getUserCodes");
	}
	
	public List<UserChatRoomVO> getChatroom(String userCode){
		return sqlSessionTemplate.selectList("NodeDbDAO.getChatroom", userCode);
	}
	
}

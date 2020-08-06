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
		return sqlSessionTemplate.selectList("MemberDAO.getMessage");
	}
	
}

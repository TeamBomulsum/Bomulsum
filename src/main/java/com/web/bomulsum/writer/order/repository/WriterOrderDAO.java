package com.web.bomulsum.writer.order.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterOrderDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<WriterOrderVO> orderConditionList(String writerSeq){
		return sqlSessionTemplate.selectList("writerOrderDAO.selectOrderConditionList", writerSeq);
	}
}

package com.web.bomulsum.user.whome.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserWHomeDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<UserWHomeVO> getListWriterSalesArt(){
		return sqlSessionTemplate.selectList("userWhomeDAO.getWriterSalesArt");
	}
	
	public int getSalesArtCount() {
		return sqlSessionTemplate.selectOne("userWhomeDAO.getSalesArtCount");
	}
	
	public int getReviewTotal() {
		return sqlSessionTemplate.selectOne("userWhomeDAO.getReviewTotal");
	}
	
	public int getAddLikes() {
		return sqlSessionTemplate.selectOne("userWhomeDAO.getAddLikes");
	}
}

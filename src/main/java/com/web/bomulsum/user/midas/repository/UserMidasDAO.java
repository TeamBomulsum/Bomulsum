package com.web.bomulsum.user.midas.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserMidasDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//카테고리별 클래스 목록 불러오기
	public List<UserMidasVO> midasCategoryList(UserMidasPagingVO vo){
		return sqlSessionTemplate.selectList("userMidasDAO.midasCategoryList", vo);
	}

	public int getCategoryMidasCount(String category) {
		return sqlSessionTemplate.selectOne("userMidasDAO.getCategoryMidasCount", category);
	}
	
	public List<UserMidasVO> midasLocationList(UserMidasPagingVO vo){
		return sqlSessionTemplate.selectList("userMidasDAO.midasLocationList", vo);
	}
	
	public int getLocationMidasCount(String location) {
		return sqlSessionTemplate.selectOne("userMidasDAO.getLocationMidasCount", location);
	}
	
	public List<UserMidasVO> midasNewList(UserMidasPagingVO vo){
		return sqlSessionTemplate.selectList("userMidasDAO.midasNewList", vo);
	}
	
	public int getAllMidasCount() {
		return sqlSessionTemplate.selectOne("userMidasDAO.getAllMidasCount");
	}
}

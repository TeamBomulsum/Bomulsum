package com.web.bomulsum.user.article.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserArticleDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<UserArticleCategoryVO> getListForCategory(UserArticlePagingVO vo){
		return sqlSessionTemplate.selectList("articleDao.articleForCategory", vo);
	}
	
	public int getCategoryArticleCount(String category) {
		return sqlSessionTemplate.selectOne("articleDao.getCategoryArticleCount", category);
	}
	
}

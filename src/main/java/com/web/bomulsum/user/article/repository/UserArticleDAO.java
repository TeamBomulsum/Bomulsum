package com.web.bomulsum.user.article.repository;

import java.util.HashMap;
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
	
	public int getCategoryArticleCount(UserArticlePagingVO vo) {
		return sqlSessionTemplate.selectOne("articleDao.getCategoryArticleCount", vo);
	}
	
	public void likeArticle(HashMap<String, String> map) {
		sqlSessionTemplate.insert("articleDao.likeArticle", map);
	}
	
	public void nonLikeArticle(HashMap<String, String> map) {
		sqlSessionTemplate.delete("articleDao.nonLikeArticle", map);
	}
	
	public List<String> getLikeArticles(String member){
		return sqlSessionTemplate.selectList("articleDao.getLikeArticles", member);
	}
	
}

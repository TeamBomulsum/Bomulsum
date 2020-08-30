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
	
	public int getSearchArticleCount(UserSearchPagingVO vo) {
		return sqlSessionTemplate.selectOne("articleDao.getSearchArticleCount", vo);
	}
	
	public List<UserArticleCategoryVO> getArticleListForSearch(UserSearchPagingVO vo) {
		return sqlSessionTemplate.selectList("articleDao.articleForSearch", vo);
	}
	
	public int selectWord(String word) {
		if(sqlSessionTemplate.selectOne("articleDao.wordSelect", word) == null) {
			return 0;
		}else {			
			return sqlSessionTemplate.selectOne("articleDao.wordSelect", word);
		}
	}
	
	public void insertWord(String word) {
		sqlSessionTemplate.insert("articleDao.wordInsert", word);
	}
	
	public void updateWord(HashMap<String, Object> map) {
		sqlSessionTemplate.update("articleDao.wordUpdate", map);
	}
	
	public List<String> realTimeKeyword(){
		return sqlSessionTemplate.selectList("articleDao.realTimeKeyword");
	}
	
}

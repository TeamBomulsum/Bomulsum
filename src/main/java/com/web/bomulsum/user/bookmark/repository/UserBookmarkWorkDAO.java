package com.web.bomulsum.user.bookmark.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;

@Repository
public class UserBookmarkWorkDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<UserArticleCategoryVO> bookmarkArticle(UserBookmarkVO vo){
		return sqlSessionTemplate.selectList("userBookmarkDAO.bookmarkArticle", vo);
	}
	
	public int bookmarkArticleCount(UserBookmarkVO vo) {
		return sqlSessionTemplate.selectOne("userBookmarkDAO.bookmarkArticleCount", vo);
	}

}

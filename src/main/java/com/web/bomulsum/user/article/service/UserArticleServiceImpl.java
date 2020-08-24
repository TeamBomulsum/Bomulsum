package com.web.bomulsum.user.article.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticleDAO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;
import com.web.bomulsum.user.article.repository.UserSearchPagingVO;

@Service
public class UserArticleServiceImpl implements UserArticleService{
	
	@Autowired
	private UserArticleDAO dao;

	@Override
	public List<UserArticleCategoryVO> getListForCategory(UserArticlePagingVO vo) {
		return dao.getListForCategory(vo);
	}

	@Override
	public int getCategoryArticleCount(UserArticlePagingVO vo) {
		return dao.getCategoryArticleCount(vo);
	}

	@Override
	public void likeArticle(HashMap<String, String> map) {
		dao.likeArticle(map);
	}

	@Override
	public void nonLikeArticle(HashMap<String, String> map) {
		dao.nonLikeArticle(map);
	}

	@Override
	public List<String> getLikeArticles(String member) {
		return dao.getLikeArticles(member);
	}

	@Override
	public int getSearchArticleCount(UserSearchPagingVO vo) {
		return dao.getSearchArticleCount(vo);
	}

	@Override
	public List<UserArticleCategoryVO> getArticleListForSearch(UserSearchPagingVO vo) {
		return dao.getArticleListForSearch(vo);
	}
	
}

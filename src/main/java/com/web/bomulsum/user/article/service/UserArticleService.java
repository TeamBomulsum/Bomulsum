package com.web.bomulsum.user.article.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;
import com.web.bomulsum.user.article.repository.UserSearchPagingVO;

public interface UserArticleService {
	List<UserArticleCategoryVO> getListForCategory(UserArticlePagingVO vo);
	int getCategoryArticleCount(UserArticlePagingVO vo);
	void likeArticle(HashMap<String, String> map);
	void nonLikeArticle(HashMap<String, String> map);
	List<String> getLikeArticles(String member);
	int getSearchArticleCount(UserSearchPagingVO vo);
	List<UserArticleCategoryVO> getArticleListForSearch(UserSearchPagingVO vo);
	int selectWord(String word);
	void insertWord(String word);
	void updateWord(HashMap<String, Object> map);
	List<String> realTimeKeyword();
}
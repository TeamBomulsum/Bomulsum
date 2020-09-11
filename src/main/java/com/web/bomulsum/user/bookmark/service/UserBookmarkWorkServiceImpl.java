package com.web.bomulsum.user.bookmark.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;
import com.web.bomulsum.user.bookmark.repository.UserBookmarkVO;
import com.web.bomulsum.user.bookmark.repository.UserBookmarkWorkDAO;

@Service
public class UserBookmarkWorkServiceImpl implements UserBookmarkWorkService{

	@Autowired
	private UserBookmarkWorkDAO dao;
	
	@Override
	public List<UserArticleCategoryVO> bookmarkArticle(UserBookmarkVO vo) {
		return dao.bookmarkArticle(vo);
	}

	@Override
	public int bookmarkArticleCount(UserBookmarkVO vo) {
		return dao.bookmarkArticleCount(vo);
	}

}

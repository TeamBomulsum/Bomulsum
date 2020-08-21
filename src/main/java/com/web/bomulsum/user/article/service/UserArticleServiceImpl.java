package com.web.bomulsum.user.article.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticleDAO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;

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
		return dao.getCategoryArticleCount(vo.getCategory());
	}
	
}

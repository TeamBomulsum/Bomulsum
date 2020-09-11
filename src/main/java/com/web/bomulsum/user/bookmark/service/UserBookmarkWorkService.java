package com.web.bomulsum.user.bookmark.service;

import java.util.List;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;
import com.web.bomulsum.user.bookmark.repository.UserBookmarkVO;

public interface UserBookmarkWorkService {
	List<UserArticleCategoryVO> bookmarkArticle(UserBookmarkVO vo);
	int bookmarkArticleCount(UserBookmarkVO vo);
}

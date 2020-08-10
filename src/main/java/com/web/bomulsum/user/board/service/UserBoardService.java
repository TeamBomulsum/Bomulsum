package com.web.bomulsum.user.board.service;

import java.util.List;

import com.web.bomulsum.user.board.repository.UserBoardNoticeVO;

public interface UserBoardService {
	List<UserBoardNoticeVO> getBoardTitles();
}

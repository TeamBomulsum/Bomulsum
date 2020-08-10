package com.web.bomulsum.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.board.repository.UserBoardDAO;
import com.web.bomulsum.user.board.repository.UserBoardNoticeVO;

@Service
public class UserBoardServiceImpl implements UserBoardService{
	
	@Autowired
	private UserBoardDAO dao;

	@Override
	public List<UserBoardNoticeVO> getBoardTitles() {
		return dao.getBoardTitles();
	}

}

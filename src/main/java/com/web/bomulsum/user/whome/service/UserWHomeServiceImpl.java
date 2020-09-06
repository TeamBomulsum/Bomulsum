package com.web.bomulsum.user.whome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.whome.repository.UserWHomeDAO;
import com.web.bomulsum.user.whome.repository.UserWHomeVO;

@Service
public class UserWHomeServiceImpl implements UserWHomeService{

	@Autowired
	private UserWHomeDAO dao;

	@Override
	public List<UserWHomeVO> getListWriterSalesArt() {
		return dao.getListWriterSalesArt();
	}

	@Override
	public int getSalesArtCount() {
		return dao.getSalesArtCount();
	}

	@Override
	public int getReviewTotal() {
		return dao.getReviewTotal();
	}

	@Override
	public int getAddLikes() {
		return dao.getAddLikes();
	}
}

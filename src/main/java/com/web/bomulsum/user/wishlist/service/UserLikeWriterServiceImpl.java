package com.web.bomulsum.user.wishlist.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.wishlist.repository.UserLikeWriterDAO;
import com.web.bomulsum.user.wishlist.repository.UserLikeWriterVO;

@Service
public class UserLikeWriterServiceImpl implements UserLikeWriterService{
	
	 @Autowired
	 UserLikeWriterDAO dao;

	@Override
	public List<UserLikeWriterVO> getWriterInfo(String memberCode, UserLikeWriterVO vo) {
		return dao.getWriterInfo(memberCode, vo);
	}

	@Override
	public void deleteLikeWriter(Map<String, Object> map) {
		dao.deleteLikeWriter(map);
	}

	@Override
	public List<Map<String, Object>> artPhotoList(String memberCode) {
		return dao.artPhotoList(memberCode);
	}



}

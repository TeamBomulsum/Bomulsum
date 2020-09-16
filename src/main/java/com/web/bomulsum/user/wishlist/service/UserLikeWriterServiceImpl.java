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
	public List<UserLikeWriterVO> getWriterInfo(String memberCode) {
		return dao.getWriterInfo(memberCode);
	}

	@Override
	public void deleteLikeWriter(Map<String, Object> map) {
		dao.deleteLikeWriter(map);
	}


	@Override
	public List<Map<String, Object>> getArtCount(String memberCode) {
		return dao.getArtCount(memberCode);
	}

//	@Override
//	public List<UserLikeWriterPhotoVO> getArtPhotoList(String memberCode) {
//		return dao.getArtPhotoList(memberCode);
//	}

	@Override
	public List<String> getArtPhoto(String memberCode) {
		return dao.getArtPhoto(memberCode);
	}



}

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
	public List<String> getwriterList(String memberCode) {
		return dao.getwriterList(memberCode);
	}

	 
	@Override
	public List<UserLikeWriterVO> getWriterInfo(List<String> writerList) {
		return dao.getWriterInfo(writerList);
	}

	@Override
	public void deleteLikeWriter(Map<String, Object> map) {
		dao.deleteLikeWriter(map);
	}


	@Override
	public List<Map<String, Object>> getArtCount(List<String> writerList) {
		return dao.getArtCount(writerList);
	}

//	@Override
//	public List<UserLikeWriterPhotoVO> getArtPhotoList(String memberCode) {
//		return dao.getArtPhotoList(memberCode);
//	}

	//하려면 이거
	@Override
	public List<String> getArtPhoto(List<String> writerList) {
		//return dao.getArtPhoto(writerList);
		return null;
	}


	@Override
	public List<Map<String,Object>> getArtPhotoTest(String writerCode) {
		return dao.getArtPhotoTest(writerCode);
	}





}

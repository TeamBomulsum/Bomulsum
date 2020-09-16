package com.web.bomulsum.user.wishlist.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.user.wishlist.repository.UserLikeWriterVO;

public interface UserLikeWriterService {

	//좋아하는 작가 정보
	List<UserLikeWriterVO> getWriterInfo(String memberCode);
	//좋아하는 작가별 사진
	//public List<UserLikeWriterPhotoVO> getArtPhotoList(String memberCode);
	public List<String> getArtPhoto(String memberCode);
	//좋아하는 작가 취소
	void deleteLikeWriter(Map<String, Object> map);
	//작가별 작품 카운트
	public List<Map<String, Object>> getArtCount(String memberCode);
}

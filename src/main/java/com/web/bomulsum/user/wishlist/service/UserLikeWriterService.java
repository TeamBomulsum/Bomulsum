package com.web.bomulsum.user.wishlist.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.user.wishlist.repository.UserLikeWriterVO;

public interface UserLikeWriterService {

	//좋아하는 작가 정보
	List<UserLikeWriterVO> getWriterInfo(String memberCode, UserLikeWriterVO vo);
	//좋아하는 작가별 사진
	public List<Map<String, Object>> artPhotoList(String memberCode);
	//좋아하는 작가 취소
	void deleteLikeWriter(Map<String, Object> map);
}

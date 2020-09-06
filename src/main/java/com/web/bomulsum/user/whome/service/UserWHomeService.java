package com.web.bomulsum.user.whome.service;

import java.util.List;

import com.web.bomulsum.user.whome.repository.UserWHomeVO;

public interface UserWHomeService {
	List<UserWHomeVO> getListWriterSalesArt();
	int getSalesArtCount();
	int getReviewTotal();
	int getAddLikes();
}

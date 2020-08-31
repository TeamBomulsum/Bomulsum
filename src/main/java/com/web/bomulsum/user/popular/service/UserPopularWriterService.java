package com.web.bomulsum.user.popular.service;

import java.util.List;

import com.web.bomulsum.user.popular.repository.UserPopularWriterVO;

public interface UserPopularWriterService {
	
	public List<UserPopularWriterVO> getWriterInfo();
	
	public List<String> getLikeWriter(String memberCode);

}

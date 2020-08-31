package com.web.bomulsum.user.popular.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.bomulsum.user.popular.repository.UserPopularWriterDAO;
import com.web.bomulsum.user.popular.repository.UserPopularWriterVO;

@Service
public class UserPopularWriterServiceImpl implements UserPopularWriterService{
	
	 @Autowired
	 UserPopularWriterDAO dao;

	@Override
	public List<UserPopularWriterVO> getWriterInfo() {
		return dao.getWriterInfo();
	}

	@Override
	public List<String> getLikeWriter(String memberCode) {
		return dao.getLikeWriter(memberCode);
	}


}

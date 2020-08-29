package com.web.bomulsum.user.midas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.midas.repository.UserMidasDAO;
import com.web.bomulsum.user.midas.repository.UserMidasPagingVO;
import com.web.bomulsum.user.midas.repository.UserMidasVO;

@Service
public class UserMidasServiceImpl implements UserMidasService {

	@Autowired
	UserMidasDAO dao;
	
	@Override
	public List<UserMidasVO> midasCategoryList(UserMidasPagingVO vo) {
		return dao.midasCategoryList(vo);
	}

	@Override
	public int getCategoryMidasCount(UserMidasPagingVO vo) {
		return dao.getCategoryMidasCount(vo.getCategory());
	}


}

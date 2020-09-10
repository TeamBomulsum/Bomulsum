package com.web.bomulsum.user.order.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.order.repository.UserShopbagDAO;
import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
import com.web.bomulsum.user.order.repository.UserShopbagVO;

@Service
public class UserShopbagServiceImpl implements UserShopbagService{
	
	
	@Autowired
	UserShopbagDAO dao;

	@Override
	public List<UserShopbagVO> getShopbagInfo() {
		return dao.getShopbagInfo();
	}

	@Override
	public List<UserShopbagOptionVO> getOptionInfo(String[] artOption) {
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < artOption.length; i++) {
			list.add(artOption[i]);
		}
		return dao.getOptionInfo(list);
	}

	@Override
	public List<UserShopbagVO> goShopbagModal(HashMap<String, String> map) {
		return dao.goShopbagModal(map);
	}

}

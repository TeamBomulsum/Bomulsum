package com.web.bomulsum.user.order.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
import com.web.bomulsum.user.order.repository.UserShopbagVO;

public interface UserShopbagService {
	public List<UserShopbagVO> getShopbagInfo();
	public List<UserShopbagOptionVO> getOptionInfo(String[] artOption);
	public List<UserShopbagVO> goShopbagModal(HashMap<String, String> map);

}

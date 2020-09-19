package com.web.bomulsum.user.orderList.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.orderList.repository.UserOrderListDao;

@Service
public class UserOrderListServiceImpl implements UserOrderListService {
	
	@Autowired
	private UserOrderListDao dao;
	
}

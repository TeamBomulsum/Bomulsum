package com.web.bomulsum.user.orderList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bomulsum.user.orderList.service.UserOrderListService;

@Controller
@RequestMapping(value="/user")
public class UserOrderListController {

	@Autowired
	private UserOrderListService service;
	
	@RequestMapping(value="/myInfo/orderList")
	public String orderList() {
		return "/umyInfo/uorderSend/uOrderList";
	}
	
}

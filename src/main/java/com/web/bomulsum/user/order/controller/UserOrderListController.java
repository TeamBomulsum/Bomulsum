package com.web.bomulsum.user.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class UserOrderListController {

	@RequestMapping(value="/myInfo/orderList")
	public String orderList(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String seq = (String)session.getAttribute("member");
		System.out.println(seq);
		
		return "/umyInfo/uorderSend/uOrderList";
	}
	
}

package com.web.bomulsum.user.payment.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user")
public class UserPaymentController {

	@RequestMapping(value="/payment")
	public ModelAndView goShopbag(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView("ushopbag/uPayment");
		return mav;
	} 
	
}

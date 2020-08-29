package com.web.bomulsum.user.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class userController {
	
	@RequestMapping(value="/home")
	public String goHome() {
		
		return "uhome";
	} 
	
	@RequestMapping(value="/home/shopbag")
	public String shop() {
		return "/ushopbag/uPayment";
	}
	
	@RequestMapping(value="/home/shopbag1")
	public String shop1() {
		return "/ushopbag/uProductInfo";
	}
	
	@RequestMapping(value="/home/shopbag2")
	public String shop2() {
		return "/ushopbag/ushopbag";
	}
	
	@RequestMapping(value="/home/shopbag3")
	public String shop3() {
		return "/ushopbag/usuccessOrder";
	}
	
}

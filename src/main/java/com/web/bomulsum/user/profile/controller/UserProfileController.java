package com.web.bomulsum.user.profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.profile.service.UserProfileService;

@Controller
@RequestMapping(value="/user")
public class UserProfileController {

	@Autowired
	UserProfileService service;
	
	//회원등급페이지 - 작가id받아오는거, 환불제외하는거(db에 어떻게들어갈지) 추가해야함, 
	//3개월내 아무것도 안사면 브론즈로.  select(금액) where(날짜3개월이내) 한게 null이면 등급 브론즈.. 결제금액은 유지.. 
	@RequestMapping(value="/membergrade")
	public ModelAndView uMemberGrade() {
		ModelAndView mav = new ModelAndView("/umyInfo/uinformation/uMemberGrade");
		
		//회원 구매금액산정
		int paysum = service.getSumpay();
		mav.addObject("paysum", paysum);
		
		//3개월이내 금액산정
		int paysumperiod = service.getSumpayPeriod();
		System.out.println(paysumperiod);
		mav.addObject("paysumperiod", paysumperiod);
		
		System.out.println(mav);
		return mav;
	} 
	
	@RequestMapping(value="/infomanage")
	public ModelAndView uInfoManage() {
		ModelAndView mav = new ModelAndView("/umyInfo/uinformation/uInfoManage");
		
	
		return mav;
	} 
}

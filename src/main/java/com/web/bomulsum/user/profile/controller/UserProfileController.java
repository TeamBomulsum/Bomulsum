package com.web.bomulsum.user.profile.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.profile.repository.UserProfileVO;
import com.web.bomulsum.user.profile.service.UserProfileService;

@Controller
@RequestMapping(value="/user")
public class UserProfileController {

	@Autowired
	UserProfileService service;
	
	//회원등급페이지 - 작가id받아오는거, 환불제외하는거(db에 어떻게들어갈지) 추가해야함, 
	//3개월내 아무것도 안사면 브론즈로.  select(금액) where(날짜3개월이내) 한게 null이면 등급 브론즈.. 결제금액은 유지.. 
	@RequestMapping(value="/membergrade")
	public ModelAndView uMemberGrade(HttpServletRequest request) {
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
	
	// 회원 정보 관리
	@RequestMapping(value="/infomanage")
	public ModelAndView uInfoManage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uinformation/uInfoManage");
		UserProfileVO result = service.getUserinfo();
		System.out.println(result);
		mav.addObject("userinfo", result);
		System.out.println(mav);
	
		return mav;
	} 
	
	// 회원 정보 수정
	// 전화번호 변경 따로 추가 
	@RequestMapping(value="/updateuserinfo" , method = RequestMethod.POST)
	public ModelAndView uUpdateInfo(UserProfileVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println("변경후:"+vo.toString());
		service.updateUserinfo(vo);
		mav.setViewName("redirect:/user/infomanage.do");
		
		return mav;
	} 
	
}

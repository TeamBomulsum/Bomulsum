package com.web.bomulsum.user.reserves.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.profile.repository.UserProfileAddressVO;
import com.web.bomulsum.user.profile.service.UserProfileService;

@Controller
@RequestMapping(value="/user")
public class UserReservesController {
	
//	@Autowired
//	UserProfileService service;
	
	
	//적립금페이지-------------------------------
	@RequestMapping(value="/reserves" , method = RequestMethod.GET)
	public String userPoint(){
		return "/umyInfo/udiscount/uReserves";
	} 
	/*
	 * //적립금페이지-------------------------------
	 * 
	 * @RequestMapping(value="/reserves" , method = RequestMethod.GET) public
	 * ModelAndView userPoint(UserProfileAddressVO vo, HttpServletRequest request){
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/umyInfo/udiscount/uReserves"); return mav; }
	 */
}

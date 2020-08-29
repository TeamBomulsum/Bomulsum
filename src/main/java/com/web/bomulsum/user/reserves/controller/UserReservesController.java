package com.web.bomulsum.user.reserves.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.reserves.repository.UserReservesVO;
import com.web.bomulsum.user.reserves.service.UserReservesService;

@Controller
@RequestMapping(value="/user")
public class UserReservesController {
	
	@Autowired
	UserReservesService service;
	
	
	/*
	 * //적립금페이지-------------------------------
	 * 
	 * @RequestMapping(value="/reserves" , method = RequestMethod.GET) public String
	 * userPoint(){ return "/umyInfo/udiscount/uReserves"; }
	 */
	
	  //적립금페이지-------------------------------
	@RequestMapping(value = "/reserves", method = RequestMethod.GET)
	public ModelAndView userPoint(UserReservesVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<UserReservesVO> list = service.getUserPoint(); //이용내역
		mav.setViewName("/umyInfo/udiscount/uReserves");
		mav.addObject("ureserves", list);
		
		int usepoint = service.getUserPointUse(); //총 사용한 포인트
		mav.addObject("usepoint",usepoint);
		
		int reservepoint = service.getUserSumReserves(); //총 적립한 포인트
		
		int usablepoint = reservepoint - usepoint;
		mav.addObject("usablepoint", usablepoint);
		
		System.out.println(mav);
		return mav;
	}
	 
}

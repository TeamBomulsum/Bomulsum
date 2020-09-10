package com.web.bomulsum.user.bookmark.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user/wishlist")
public class UserBookmarkWorkController {
	
	@RequestMapping(value = "/bookmarkWork")
	public ModelAndView bookmarkWork(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uwishList/uBookMarkWork");
		return mav;
	}
	
	@RequestMapping(value = "/bookmarkOffline")
	public ModelAndView bookmarkOffline(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uwishList/uBookMarkOffline");
		return mav;
	}
	
	@RequestMapping(value = "/bookmarkOnline")
	public ModelAndView bookmarkOnline(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uwishList/uBookMarkOnline");
		return mav;
	}
}

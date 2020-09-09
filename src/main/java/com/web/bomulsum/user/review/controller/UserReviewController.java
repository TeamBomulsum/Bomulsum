package com.web.bomulsum.user.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.review.service.UserReviewServiceImpl;

@Controller
@RequestMapping(value="/user/myInfo")
public class UserReviewController {

	@Autowired
	private UserReviewServiceImpl service;
	
	@RequestMapping("/review")
	public ModelAndView myReview(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String seq = (String)session.getAttribute("member");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", service.myReview(seq));
		mav.setViewName("/umyInfo/uReview/uWriteReview");
		return mav;
	}
	
	@RequestMapping("/reviewedList")
	public ModelAndView myReviewList(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/uReview/uWriteReviewMe");
		return mav;
	}
}

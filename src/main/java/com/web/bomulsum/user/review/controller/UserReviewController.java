package com.web.bomulsum.user.review.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user/myInfo")
public class UserReviewController {

	@RequestMapping("/review")
	public ModelAndView myReview(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/uReview/uWriteReview");
		return mav;
	}
}

package com.web.bomulsum.user.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.board.service.UserBoardServiceImpl;

@Controller
@RequestMapping(value="/user")
public class UserBoardController {

	@Autowired
	private UserBoardServiceImpl service;
	
	@RequestMapping(value="/board/notice")
	public ModelAndView getBoard() {
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("boardVo", service.getBoardTitles());
		mav.setViewName("/ucustomercenter/uNotice");
		
		return mav;
	}
	
	@RequestMapping(value="/board/question")
	public String getQuestion() {
		return "/ucustomercenter/uQuestion";
	}
	
}

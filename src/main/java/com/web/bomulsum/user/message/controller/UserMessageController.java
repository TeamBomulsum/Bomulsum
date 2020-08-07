package com.web.bomulsum.user.message.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.message.service.NodeDbServiceImpl;

@Controller
@RequestMapping(value="/user")
public class UserMessageController {
	
	@Autowired
	private NodeDbServiceImpl service;
	
	@GetMapping("/message")
	public ModelAndView nodeDb() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/umessageNalarm/uMessage");
		return mav;
	}
	
	@ResponseBody
	@GetMapping("/message/data")
	public List<String> sendData(){
		List<String> vo = service.getUserCodes();
		return vo;
	}
	

	
}

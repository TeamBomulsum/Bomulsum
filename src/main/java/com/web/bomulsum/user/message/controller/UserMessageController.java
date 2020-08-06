package com.web.bomulsum.user.message.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class UserMessageController {
	
	@GetMapping("/message")
	public String userMessage() {
		return "/umyInfo/umessageNalarm/uMessage";
	}
	
}

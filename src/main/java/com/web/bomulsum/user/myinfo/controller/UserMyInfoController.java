package com.web.bomulsum.user.myinfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/user/myInfo")
public class UserMyInfoController {

	@RequestMapping(value="/home")
	public String myInfoHome() {
		return "/umyInfo/uMyHome";
	}
	
	@RequestMapping(value="/ugift/receive")
	public String myInfoGiftReceive() {
		return "/umyInfo/ugift/uRGiftList";
	}
	
	@RequestMapping(value="/ugift/receive/check")
	public String myInfoGiftReceiveCheck() {
		return "/umyInfo/ugift/uRGiftCheck";
	}

	
	
}

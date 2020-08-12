package com.web.bomulsum.user.profile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class UserProfileController {

	
	@GetMapping("/membergrade")
	public String uMemberGrade() {
		return "/umyInfo/uinformation/uMemberGrade";
	} 
}

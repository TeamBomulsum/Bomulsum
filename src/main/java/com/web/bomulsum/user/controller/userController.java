package com.web.bomulsum.user.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class userController {
	
	@RequestMapping(value="/home")
	public String goHome() {
		
		System.out.println("controller ¡¯¿‘");
		return "uhome";
	}
	
}

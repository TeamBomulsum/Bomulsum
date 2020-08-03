package com.web.bomulsum.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class managerController {

	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	
}

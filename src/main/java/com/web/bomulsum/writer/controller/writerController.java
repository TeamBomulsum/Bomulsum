package com.web.bomulsum.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class writerController {
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	@GetMapping("/wpolicyguide")
	public String policy_guid() {
		return "wborder/policy_guide";
	}
	
}

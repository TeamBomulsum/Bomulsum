package com.web.bomulsum.user.midas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/midas")
public class UserMidasController {

	@RequestMapping(value="/class")
	public String midasHome() {
		return "/umidas/uMhome";
	}
	
	@RequestMapping(value="/category")
	public String midas1() {
		return "/umidas/umCategory";
	}
	
	@RequestMapping(value="/product")
	public String midas2() {
		return "/umidas/uMidasProduct";
	}
	
	@RequestMapping(value="/location")
	public String midas3() {
		return "/umidas/umLocation";
	}
}

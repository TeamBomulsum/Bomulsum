package com.web.bomulsum.user.midasInfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/midas/info")
public class MidasInfoController {
	
	
	@RequestMapping(value="/{midasCodeSeq}")
	public String midasDetailInfo() {
		return "";
	}
	
	@RequestMapping(value="/detail")
	public String midasTest() {
		return "/umidas/uMidasProduct";
	}
	
}

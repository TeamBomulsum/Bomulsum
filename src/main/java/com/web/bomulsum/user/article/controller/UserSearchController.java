package com.web.bomulsum.user.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/search")
public class UserSearchController {

	@RequestMapping(value="/result", method=RequestMethod.GET)
	public String getSearch(@RequestParam String headerSearch) {
		return "/usearch/uSearch";
	}
	
}

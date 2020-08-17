package com.web.bomulsum.user.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/category")
public class UserArticleController {
	
	
	
	@RequestMapping(value="/")
	public String categoryHome() {
		return "/ucategory/ucategory";
	}
	
}

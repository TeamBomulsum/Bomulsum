package com.web.bomulsum.writer.gempoint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/writer")
public class WriterGempointController {
	
	@RequestMapping(value="/gempoint")
	public String gempoint() {
		return "/waccount/gemPoint";
	} 
}

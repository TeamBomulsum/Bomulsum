package com.web.bomulsum.writer.art.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/writer")
public class WriterArtController {
	

	@GetMapping("/workRegister")
	public ModelAndView workRegister() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/warticle/workRegister");
		return mav;
	} 
	
}

package com.web.bomulsum.writer.midas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/writer")
public class WriterMidasController {

	
	@GetMapping("/midasRegister")
	public ModelAndView midas() {
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/warticle/midasWorkRegister");
		return mav;	
	}
	
}

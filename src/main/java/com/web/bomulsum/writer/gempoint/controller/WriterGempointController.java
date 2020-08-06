package com.web.bomulsum.writer.gempoint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.gempoint.repository.WriterGempointVO;
import com.web.bomulsum.writer.gempoint.service.WriterGempointService;


@Controller
@RequestMapping(value = "/writer")
public class WriterGempointController {
	
	@Autowired
	WriterGempointService service;
	
	@GetMapping(value="/gempoint")
	public ModelAndView gempoint() {
		List<WriterGempointVO> list = service.getGemPoint();
		ModelAndView mav = new ModelAndView("/waccount/gemPoint");
		mav.addObject("article", list);
		return mav;
	} 
	
	
}

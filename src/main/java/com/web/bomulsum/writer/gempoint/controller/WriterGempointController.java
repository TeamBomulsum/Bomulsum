package com.web.bomulsum.writer.gempoint.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.web.bomulsum.writer.gempoint.service.WriterGempointService;


@Controller
@RequestMapping(value = "/writer")
public class WriterGempointController {
	
	@Autowired
	WriterGempointService service;
	
	@GetMapping(value="/gempoint")
	public ModelAndView gempoint() {
		List<Map<String, String>> list = service.getGemPoint();
		ModelAndView mav = new ModelAndView("/waccount/gemPoint");
		mav.addObject("article", list);
		Map<String, Object> gemSum = service.getGemPointSum();//젬포인트 보유포인트
		mav.addObject("gemsum", gemSum);
		return mav;
	} 
	
	
}

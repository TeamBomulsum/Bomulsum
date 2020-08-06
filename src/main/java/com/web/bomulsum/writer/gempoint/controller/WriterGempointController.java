package com.web.bomulsum.writer.gempoint.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		Map<String, Object> gemSum = service.getGemPointSum();//������Ʈ ��������Ʈ
		mav.addObject("gemsum", gemSum);
		return mav;
	} 

	@RequestMapping(value="/gempoint/charge")
	public ModelAndView gempointCharge(int chargeMoney) {
		System.out.println("������ ����Ʈ : " + chargeMoney);
		System.out.println("������ ����Ʈzz : " + chargeMoney);
		ModelAndView mav = new ModelAndView("redirect:/writer/gempoint.wdo");
		service.insertGemPointCharge(chargeMoney);
		return mav;
	}

	
	
}

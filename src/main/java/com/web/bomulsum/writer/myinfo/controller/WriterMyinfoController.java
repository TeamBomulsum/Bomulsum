package com.web.bomulsum.writer.myinfo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.myinfo.repository.WriterMyinfoVO;
import com.web.bomulsum.writer.myinfo.service.WriterMyinfoService;

@Controller
@RequestMapping(value="/writer")
public class WriterMyinfoController {
	@Autowired
	WriterMyinfoService service;
	
	@RequestMapping(value="/myinfo")
	public ModelAndView writerMyinfo() {
		ModelAndView mav = new ModelAndView("/waccount/myInformation");
		
		//내정보
		WriterMyinfoVO result = service.getWriterMyinfo();
		System.out.println(result);
		mav.addObject("myinfo", result);
		
		//젬포인트
		Map<String, Object> pointSum = service.getGemPointSum2();//젬포인트 보유포인트
		System.out.println("젬포인트:"+pointSum);
		mav.addObject("pointsum", pointSum);
		return mav;
	} 
	
	@RequestMapping(value="/insertphone")
	public ModelAndView insertPhone(String writerPhone) {
		System.out.println("넘어온 폰번호:"+writerPhone);
		ModelAndView mav = new ModelAndView("redirect:/writer/myinfo.wdo");
		service.insertPhone(writerPhone);
		return mav;
	}
	@RequestMapping(value="/inserturl")
	public ModelAndView insertUrl(String writerUrl) {
		System.out.println(writerUrl);
		System.out.println("넘어온 url:" + writerUrl);
		ModelAndView mav = new ModelAndView("redirect:/writer/myinfo.wdo");
		service.insertUrl(writerUrl);
		return mav;
		
	}
	
}

package com.web.bomulsum.writer.art.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.service.WriterArtService;

@Controller
@RequestMapping(value = "/writer")
public class WriterArtController {
	
	@Autowired
	WriterArtService service;
	
	@GetMapping("/workRegister")
	public String workRegister() {
		return "/warticle/workRegister";
	} 
	
	/*
	 * workRegister.jsp 에서 form 태그의 엑션 값  "/artregister"
	 */ 
	@RequestMapping(value="/artregister")
	public ModelAndView insertArt(WriterArtVO vo, WriterArtInfoDetailVO vo1){	
		service.insertArt(vo);
		System.out.println(vo.toString());
		String artCode = service.getArtCode(vo.getArtName());
		System.out.println(artCode);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("artCodeSeq",artCode);
		
		mav.setViewName("redirect:/writer/workRegister.wdo"); 
		service.insertArtInfoDetail(vo1);
		mav.addObject("check", 1); // 뷰로 보낼 데이터 값
		return mav;
	}

}

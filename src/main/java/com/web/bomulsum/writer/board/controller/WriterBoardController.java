package com.web.bomulsum.writer.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.board.repository.writerBoardVO;
import com.web.bomulsum.writer.board.service.WriterBoardService;

@Controller
@RequestMapping(value = "/writer")
public class WriterBoardController {
	
	@Autowired
	WriterBoardService service;
	
	@GetMapping("/policyguide")
	public ModelAndView policyGuide() {
		List<writerBoardVO> list = service.getPolicyGuideBoard();
		ModelAndView mav = new ModelAndView("wborder/policy_guide");
		mav.addObject("article", list);
		return mav;
	} 
	
	@RequestMapping(value="/policyGuideArticle", method=RequestMethod.GET)
	public @ResponseBody writerBoardVO admin_notice_seq(@RequestParam String admin_notice_seq) {
		writerBoardVO dbvalue= service.getPolicyGuideArticle(admin_notice_seq);
		return dbvalue;
	}
}


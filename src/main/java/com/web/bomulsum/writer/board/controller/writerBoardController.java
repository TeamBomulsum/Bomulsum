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
import com.web.bomulsum.writer.board.service.writerBoardService;

@Controller
@RequestMapping(value="/board")
public class writerBoardController {
	
	@Autowired
	private writerBoardService service;
	
	@GetMapping("/announcement")
	public ModelAndView announcement() {
		List<writerBoardVO> list = service.getAnnouncementBoard();
		ModelAndView mav = new ModelAndView("wborder/announcement");
		mav.addObject("article",list);
		return mav;
	}
	@RequestMapping(value="/announcementArticle", method=RequestMethod.GET)
	public @ResponseBody writerBoardVO admin_notice_seq(@RequestParam String admin_notice_seq){
		writerBoardVO dbValue = service.getAnnouncementArticle(admin_notice_seq);
		
		return dbValue;
	}
	
}









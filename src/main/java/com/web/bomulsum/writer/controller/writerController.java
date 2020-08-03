package com.web.bomulsum.writer.controller;

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
public class writerController {
	
	@Autowired
	WriterBoardService writeBoardService;
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}

	
	


}

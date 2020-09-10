package com.web.bomulsum.writer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bomulsum.writer.board.service.WriterBoardService;

@Controller
@RequestMapping(value="/writer")
public class writerController {
	
	@Autowired
	WriterBoardService writeBoardService;
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	@GetMapping("/orderCondition")
	public String orderCondition() {
		return "worder/orderCondition";
	}

	@GetMapping("/orderList")
	public String orderList() {
		return "worder/orderList";
	}
	@GetMapping("/registerOfShip")
	public String registerOfShip() {
		return "worder/registerOfShip";
	}


}

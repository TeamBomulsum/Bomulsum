package com.web.bomulsum.manager.board.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bomulsum.manager.board.repository.MBoardVO;

@Controller
@RequestMapping(value="/mboard")
public class managerController {

	@GetMapping("/write")
	public String mboard_write() {
		return "mboard_write";
	}
	
	@RequestMapping(value="/register")
	public void mboardRegister(MBoardVO vo){
		System.out.println(vo.toString());
	}
	
}

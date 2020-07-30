package com.web.bomulsum.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bomulsum.user.repository.userDAO;
import com.web.bomulsum.user.repository.userVO;

@Controller
public class userController {
	
	@Autowired
	userDAO dao;
	
	@RequestMapping(value="/home")
	public String goHome() {
		userVO vo = new userVO();
		vo.setAdminId("abc");
		vo.setAdminPassword("1111");
		dao.insertBoard(vo);
		System.out.println("controller ¡¯¿‘");
		return "uhome";
	}
	
}

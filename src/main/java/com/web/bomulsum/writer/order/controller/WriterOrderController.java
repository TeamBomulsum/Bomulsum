package com.web.bomulsum.writer.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.order.repository.WriterOrderVO;
import com.web.bomulsum.writer.order.service.WriterorderServiceImpl;

@Controller
@RequestMapping("/writer")
public class WriterOrderController {

	@Autowired
	private WriterorderServiceImpl service;
	
	@GetMapping("/order/condition")
	public ModelAndView orderCondition(HttpServletRequest request) {
		
		//로그인한 작가 정보 가져오기
		HttpSession session = request.getSession();
		WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");
		String writerCodeSeq = code.getWriterSeq();
		
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("orderConditionList", service.orderConditionList(writerCodeSeq));
		mav.setViewName("/worder/orderCondition");
		
		return mav;
	}
	
	
	@GetMapping("/order/orderList")
	public String orderList() {
		return "/worder/orderList";
	}
	
	@GetMapping("/order/registerOfShip")
	public String orderShip() {
		return "/worder/registerOfShip";
	}
	
}

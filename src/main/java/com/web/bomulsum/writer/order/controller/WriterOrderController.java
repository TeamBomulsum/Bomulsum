package com.web.bomulsum.writer.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/writer")
public class WriterOrderController {

	@GetMapping("/order/condition")
	public String orderCondition() {
		return "/worder/orderCondition";
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

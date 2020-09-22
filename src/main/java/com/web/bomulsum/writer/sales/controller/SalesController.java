package com.web.bomulsum.writer.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="writer")
public class SalesController {
	
	@GetMapping("sales")
	public String sales() {
		return "wstats/sales";
	}
}

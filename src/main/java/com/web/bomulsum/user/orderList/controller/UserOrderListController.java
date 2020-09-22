package com.web.bomulsum.user.orderList.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.orderList.repository.OrderListDataVO;
import com.web.bomulsum.user.orderList.service.UserOrderListService;

@Controller
@RequestMapping(value="/user")
public class UserOrderListController {

	@Autowired
	private UserOrderListService service;
	
	@RequestMapping(value="/myInfo/orderList")
	public ModelAndView orderList(HttpSession session,ModelAndView mav) {
		String member = (String)session.getAttribute("member");
		if(member == null) {
			mav.setViewName("redirect:/home.do");
			return mav;
		}
		System.out.println(service.getOrderTb(member).toString());
		
		mav.addObject("data", service.getOrderTb(member));
		mav.setViewName("/umyInfo/uorderSend/uOrderList");
		
		return mav;
	}
	
	@RequestMapping(value="/myInfo/orderList/detail")
	public ModelAndView orderListDetail(@RequestParam(value="orderCode") String code, HttpSession session, ModelAndView mav) {
		String member = (String)session.getAttribute("member");
		if(member == null) {
			mav.setViewName("redirect:/home.do");
			return mav;
		}
		
		mav.setViewName("/umyInfo/uorderSend/uOrderListDetail");
		OrderListDataVO vo = service.getOrderDetail(code);
		mav.addObject("data", vo);
		if(vo.getOrderTable().getCouponCodeSeq() != null) {
			String coupon = vo.getOrderTable().getCouponCodeSeq();
			mav.addObject("coupon", service.getCouponPrice(coupon));
		}
		int sum = 0;
		for(int i=0; i<vo.getBuyArt().size(); i++) {
			sum += service.getPointPrice(vo.getBuyArt().get(i).getArtCodeSeq());
		}
		mav.addObject("point", sum);
		
		
		return mav;
	}
	
	@RequestMapping(value="/myInfo/refund/request")
	public String refundList(@RequestParam(value="orderCode") String code ) {
		System.out.println(code);
		return "/umyInfo/uorderSend/uApplyRefund";
	}
	
	@RequestMapping(value="/myInfo/refundList")
	public String cancleList() {
		return "/umyInfo/uorderSend/uCancleList";
	}
	
}

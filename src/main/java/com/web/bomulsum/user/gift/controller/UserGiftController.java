package com.web.bomulsum.user.gift.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.gift.repository.UserSendGiftDetailVO;
import com.web.bomulsum.user.gift.repository.UserSendGiftVO;
import com.web.bomulsum.user.gift.service.UserGiftService;

@Controller
@RequestMapping(value="/user")
public class UserGiftController {

	@Autowired
	UserGiftService service;
	
	@RequestMapping(value="/sendGift")
	public ModelAndView sendGift(UserSendGiftVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/ugift/uSGiftList");
		/*
		//회원 코드 가져오기
		HttpSession session =  request.getSession();
		String memberCode = (String) session.getAttribute("member");
		System.out.println(memberCode);
		*/
		String memberCode = "member_code_seq58";
		//작가정보
		List<UserSendGiftVO> sendGiftList = service.getSendGift(memberCode);
		System.out.println(sendGiftList);
		
		for(int i=0; i<sendGiftList.size(); i++) {
			String yesorno = sendGiftList.get(i).getOrder_address_input();
			String[] photoarr = sendGiftList.get(i).getArt_photo().split(",");
			if(yesorno.equals("N")) {
				sendGiftList.get(i).setOrder_address_input("배송주소 입력대기");
			}
			else {
				sendGiftList.get(i).setOrder_address_input("배송주소 입력완료");
			}
			sendGiftList.get(i).setArt_photo(photoarr[0]);
		}
		System.out.println(sendGiftList);
		
		mav.addObject("sendGiftList", sendGiftList);
		return mav;
	}
	
	@RequestMapping(value="sendGift/{orderCode}")
	public ModelAndView sendGiftDetail(@PathVariable String orderCode) {
		ModelAndView mav = new ModelAndView("/umyInfo/ugift/uSGiftCheck");
		
		List<UserSendGiftDetailVO> sendGiftCheckList = service.getSendGiftCheck(orderCode);
		System.out.println(sendGiftCheckList);
		
		for(int i=0; i<sendGiftCheckList.size(); i++) {
			String yesorno = sendGiftCheckList.get(i).getOrder_address_input();
			String[] photoarr = sendGiftCheckList.get(i).getArt_photo().split(",");
			Date tempDate = sendGiftCheckList.get(i).getOrder_date();
			if(yesorno.equals("N")) {
				sendGiftCheckList.get(i).setOrder_address_input("배송주소 입력대기");
			}
			else {
				sendGiftCheckList.get(i).setOrder_address_input("배송주소 입력완료");
			}
			sendGiftCheckList.get(i).setArt_photo(photoarr[0]);
			System.out.println(tempDate);
			
		}
		System.out.println(sendGiftCheckList);
		
		mav.addObject("sendGiftCheckList", sendGiftCheckList);
		return mav;
	}
	
	/*
	 * @RequestMapping(value="/sendGiftDetail") public String sendGiftDetail() {
	 * return "/umyInfo/ugift/uSGiftCheck"; }
	 */ 
	@RequestMapping(value="/receiveGift")
	public String receiveGift() {
		return "/umyInfo/ugift/uRGiftList";
	} 
	@RequestMapping(value="/receiveGiftDetail")
	public String receiveGiftDetail() {
		return "/umyInfo/ugift/uRGiftCheck";
	} 

}

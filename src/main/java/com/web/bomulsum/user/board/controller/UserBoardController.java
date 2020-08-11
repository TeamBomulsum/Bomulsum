package com.web.bomulsum.user.board.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.board.repository.UserBoardCouponVO;
import com.web.bomulsum.user.board.repository.UserBoardNoticeVO;
import com.web.bomulsum.user.board.repository.UserCouponVo;
import com.web.bomulsum.user.board.service.UserBoardServiceImpl;

@Controller
@RequestMapping(value="/user/board")
public class UserBoardController {

	@Autowired
	private UserBoardServiceImpl service;
	
	@RequestMapping(value="/notice")
	public ModelAndView getBoard() {
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("boardVo", service.getBoardTitles());
		mav.setViewName("/ucustomercenter/uNotice");
		
		return mav;
	}
	
	@RequestMapping(value="/noticeDetail")
	public ModelAndView getNoticeDetail(@RequestParam("seq") String seq) {
		ModelAndView mav = new ModelAndView();
		UserBoardNoticeVO notice = service.getDetail(seq);
		mav.addObject("notice", notice);
		System.out.println("Controller Notice : " + notice);
		
		if(notice.getNoticeCategory().equals("이벤트")) {
			UserBoardCouponVO coupon = service.getCoupon(seq);
			System.out.println("Controller Coupon : " + coupon);
			mav.addObject("coupon", coupon);
		}
		
		mav.setViewName("/ucustomercenter/uNotice_content");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/coupon")
	public int insertCoupon(UserCouponVo vo) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(new java.util.Date());
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		cal.add(Calendar.DATE, 30);
		System.out.println(cal.getTime());
		Date date = Date.valueOf(df.format(cal.getTime()));
		vo.setCouponDate(date);
		System.out.println("dao 작업 전 : " + vo.toString());
		int check = service.couponOverRap(vo);
		System.out.println("check : " + check);
		if(check == 1) {
			return check;
		}else {
			System.out.println(vo.toString());
			service.insertCoupon(vo);
			return check;
		}
	}
	
	@RequestMapping(value="/question")
	public String getQuestion() {
		return "/ucustomercenter/uQuestion";
	}
	
}

package com.web.bomulsum.user.myinfo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.myinfo.repository.MyInfoArticleVO;
import com.web.bomulsum.user.myinfo.repository.WriterInfoArticleVO;
import com.web.bomulsum.user.myinfo.service.UserMyInfoService;
import com.web.bomulsum.user.orderList.repository.UserOrderTableVO;
import com.web.bomulsum.user.orderList.service.UserOrderListService;


@Controller
@RequestMapping(value="/user/myInfo")
public class UserMyInfoController {

	@Autowired
	private UserMyInfoService service;
	
	@Autowired
	private UserOrderListService orderService;
	
	@RequestMapping(value="/home")
	public ModelAndView myInfoHome(HttpSession session, ModelAndView mav) {
		String memberCode = (String)session.getAttribute("member");
		
		if(memberCode == null) {
			mav.setViewName("redirect:/home.do");
			return mav;
		}
		
		//쿠폰 개수 가져오기.
		int coupon = service.getCouponCount(memberCode);
		mav.addObject("coupon", coupon);
		
		// 즐겨찾는 작품 리스트.
		List<String> likeList = service.getLikeList(memberCode);
		List<MyInfoArticleVO> articleList = new ArrayList<MyInfoArticleVO>();
		for(String s : likeList) {
			MyInfoArticleVO vo = service.getLikeArticle(s);
			articleList.add(vo);
		}
		mav.addObject("wishArt", likeList);
		mav.addObject("likeList", articleList);
		
		List<String> recentList = service.getRecentlyArt(memberCode);
		List<MyInfoArticleVO> recentArticleList = new ArrayList<MyInfoArticleVO>();
		for(String s : recentList) {
			MyInfoArticleVO vo = service.getLikeArticle(s);
			recentArticleList.add(vo);
		}
		mav.addObject("recentList", recentArticleList);
		
		String likeWriter = service.getLikeWriter(memberCode);
		if(likeWriter != null) {
			String artphoto = "";
			List<WriterInfoArticleVO> writerVo = service.getWriterInfo(likeWriter);
			mav.addObject("writerVO", writerVo.get(0));
			for(WriterInfoArticleVO vo : writerVo) {
				artphoto += vo.getArtPhoto().split(",")[0] + ",";
			}
			
			String[] imgList = artphoto.split(",");
			List<String> firstImg = new ArrayList<String>();
			List<String> secondImg = new ArrayList<String>();
			List<String> thirdImg = new ArrayList<String>();
			
			if(imgList.length > 9) {
				firstImg.add(imgList[0]);
				firstImg.add(imgList[1]);
				firstImg.add(imgList[2]);
				secondImg.add(imgList[3]);
				secondImg.add(imgList[4]);
				secondImg.add(imgList[5]);
				thirdImg.add(imgList[6]);
				thirdImg.add(imgList[7]);
				thirdImg.add(imgList[8]);
			}else if(imgList.length >= 6 && imgList.length <= 8) {
				firstImg.add(imgList[0]);
				firstImg.add(imgList[1]);
				firstImg.add(imgList[2]);
				secondImg.add(imgList[3]);
				secondImg.add(imgList[4]);
				secondImg.add(imgList[5]);
				for(int i=6; i<imgList.length; i++) {
					thirdImg.add(imgList[i]);					
				}
			}else if(imgList.length >= 3 && imgList.length <= 5) {
				firstImg.add(imgList[0]);
				firstImg.add(imgList[1]);
				firstImg.add(imgList[2]);
				for(int i=3; i<imgList.length; i++) {
					secondImg.add(imgList[i]);
				}
			}else if(imgList.length >= 0 && imgList.length <= 2) {
				for(int i=0; i<imgList.length; i++) {
					firstImg.add(imgList[i]);
				}
			}
			mav.addObject("imgList", imgList);
			mav.addObject("firstImg", firstImg);
			mav.addObject("secondImg", secondImg);
			mav.addObject("thirdImg", thirdImg);
			
			mav.addObject("writerPhoto", artphoto);
		}else {
			mav.addObject("writerVO", null);
		}
		UserOrderTableVO imsiVo = orderService.recentOne(memberCode);
		if(imsiVo != null) {
			String imsi = imsiVo.getOrderCodeSeq();
			if(imsi != null) {
				mav.addObject("orderListOne", orderService.getOrderDetail(imsi));
			}
		}
		
		List<String> status = orderService.getOrderStatusList(memberCode);
		int sendComplete = 0;
		int refundComplete = 0;
		for(String s : status) {
			switch(s) {
				case "배송 완료":
					sendComplete++;
					break;
				case "환불 완료":
					refundComplete++;
					break;
				default:
					break;
			}
		}
		mav.addObject("sendComplete",sendComplete);
		mav.addObject("refundComplete", refundComplete);
		
		mav.setViewName("/umyInfo/uMyHome");
		
		return mav;
	}
	
	@RequestMapping(value="/ugift/receive")
	public String myInfoGiftReceive() {
		return "/umyInfo/ugift/uRGiftList";
	}
	
	@RequestMapping(value="/ugift/receive/check")
	public String myInfoGiftReceiveCheck() {
		return "/umyInfo/ugift/uRGiftCheck";
	}

	
	
}

package com.web.bomulsum.user.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.order.service.UserShopbagService;
import com.web.bomulsum.user.productInfo.repository.TestVo;

@Controller
@RequestMapping(value="/user")
public class UserBuyNowController {
	@Autowired
	UserShopbagService service;

	@RequestMapping(value="/buy")
	public ModelAndView goShopbag(TestVo vo) {
		ModelAndView mav= new ModelAndView("ushopbag/uBuyNow");
		//바로구매 값 받아오기
		List<TestVo> listVo = vo.getTestList();
		String artCode=null;
		String memberCode=null;
		String optionCode="";
		String count="";
		for(TestVo v : listVo) {
			artCode = v.getArtCode();
			memberCode = v.getMemberCode();
			optionCode += v.getOptionCode()+"#";
			count += v.getArtCount()+",";
		}
		TestVo serviceVo = new TestVo();
		serviceVo.setArtCode(artCode);
		serviceVo.setMemberCode(memberCode);
		serviceVo.setOptionCode(optionCode);
		serviceVo.setArtCount(count);
		
		System.out.println(serviceVo.toString());
		

		return mav;
	}
}

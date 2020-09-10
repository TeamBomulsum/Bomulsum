package com.web.bomulsum.user.order.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.order.service.UserShopbagService;

@Controller
@RequestMapping(value="/user")
public class userShopbagController {
	
	@Autowired
	UserShopbagService service;

	@RequestMapping(value="/shopbag")
	public ModelAndView goShopbag() {
		ModelAndView mav= new ModelAndView("ushopbag/ushopbag");
		
		List<UserShopbagVO> shopbagInfo = service.getShopbagInfo();
		
		for(int i=0; i<shopbagInfo.size(); i++) {
			UserShopbagVO tempVO = shopbagInfo.get(i);
			String[] artOption= shopbagInfo.get(i).getArt_option_seq().split(",");
			List<UserShopbagOptionVO> optionList = service.getOptionInfo(artOption);
			switch(optionList.size()) {
			case 3:
				tempVO.setArt_option_category3(optionList.get(2).getArt_option_category());
				tempVO.setArt_option_name3(optionList.get(2).getArt_option_name());
				tempVO.setArt_option_price3(optionList.get(2).getArt_option_price());
			case 2:
				tempVO.setArt_option_category2(optionList.get(1).getArt_option_category());
				tempVO.setArt_option_name2(optionList.get(1).getArt_option_name());
				tempVO.setArt_option_price2(optionList.get(1).getArt_option_price());
			case 1:
				tempVO.setArt_option_category1(optionList.get(0).getArt_option_category());
				tempVO.setArt_option_name1(optionList.get(0).getArt_option_name());
				tempVO.setArt_option_price1(optionList.get(0).getArt_option_price());
				break;
			default :
			}
			tempVO.setTotal_price(tempVO.getArt_price() + tempVO.getArt_option_price1()+tempVO.getArt_option_price2()+tempVO.getArt_option_price3());
			String[] photoArray = tempVO.getArt_photo().split(",");
			tempVO.setArt_photo(photoArray[0]);
			shopbagInfo.remove(i);
			shopbagInfo.add(i, tempVO);	
		}
		System.out.println(shopbagInfo);
		
		mav.addObject("shopbagInfo", shopbagInfo);
		return mav;
	} 
	
	@ResponseBody
	@RequestMapping(value="/shopbagModal", method=RequestMethod.POST)
	public List<UserShopbagVO> goshopbagModal(
			@RequestParam(value="cart") String cartCode) {
		

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cart", cartCode);
		
		List<UserShopbagVO> modalInfo = service.goShopbagModal(map);
		String[] photo = modalInfo.get(0).getArt_photo().split(",");
		modalInfo.get(0).setArt_photo(photo[0]);
		
		String[] artOption= modalInfo.get(0).getArt_option_seq().split(",");
		List<UserShopbagOptionVO> optionList = service.getOptionInfo(artOption);
		switch(optionList.size()) {
		case 3:
			modalInfo.get(0).setArt_option_category3(optionList.get(2).getArt_option_category());
			modalInfo.get(0).setArt_option_name3(optionList.get(2).getArt_option_name());
			modalInfo.get(0).setArt_option_price3(optionList.get(2).getArt_option_price());
		case 2:
			modalInfo.get(0).setArt_option_category2(optionList.get(1).getArt_option_category());
			modalInfo.get(0).setArt_option_name2(optionList.get(1).getArt_option_name());
			modalInfo.get(0).setArt_option_price2(optionList.get(1).getArt_option_price());
		case 1:
			modalInfo.get(0).setArt_option_category1(optionList.get(0).getArt_option_category());
			modalInfo.get(0).setArt_option_name1(optionList.get(0).getArt_option_name());
			modalInfo.get(0).setArt_option_price1(optionList.get(0).getArt_option_price());
			break;
		default :
		}
		
		System.out.println("modalInfo"+ modalInfo);

		return modalInfo;
	}
	
}

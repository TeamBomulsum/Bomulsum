package com.web.bomulsum.user.order.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.order.repository.UserShopbagModalVO;
import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.order.service.UserShopbagService;

@Controller
@RequestMapping(value="/user")
public class userShopbagController {
	
	@Autowired
	UserShopbagService service;

	@RequestMapping(value="/shopbag")
	public ModelAndView goShopbag(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView("ushopbag/ushopbag");
		/*
		//회원 코드 가져오기
		 HttpSession session = request.getSession(); 
		 String memberCode = (String)session.getAttribute("member"); 
		 System.out.println(memberCode);
		 */
		String memberCode = "member_code_seq58";
		
		List<UserShopbagVO> shopbagInfo = service.getShopbagInfo(memberCode);
		
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
			tempVO.setTotal_price((tempVO.getArt_discount() + tempVO.getArt_option_price1()+tempVO.getArt_option_price2()
						+tempVO.getArt_option_price3())*tempVO.getArt_count());
			
			String[] photoArray = tempVO.getArt_photo().split(",");
			tempVO.setArt_photo(photoArray[0]);
			shopbagInfo.remove(i);
			shopbagInfo.add(i, tempVO);	
		}
		System.out.println(shopbagInfo);
		
		mav.addObject("shopbagInfo", shopbagInfo);
		return mav;
	} 
	
	// 장바구니 상세 내용
	@ResponseBody
	@RequestMapping(value="/shopbagModal", method=RequestMethod.POST)
	public List<UserShopbagModalVO> goshopbagModal(
			@RequestParam(value="cart") String cartCode) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cart", cartCode);
		
		List<UserShopbagModalVO> modalInfo = service.goShopbagModal(map);
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
	
	//옵션 상세 내용
	@ResponseBody
	@RequestMapping(value="/shopbagOptionModal", method=RequestMethod.POST)
	public List<UserShopbagOptionVO> goshopbagOptionModal(@RequestParam(value="art") String artCode) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("art", artCode);
		List<UserShopbagOptionVO> optionModalInfo = service.goShopbagOptionModal(map);
			return optionModalInfo;
		}
	
	
	//요청사항 저장
	@ResponseBody
	@RequestMapping(value="/shopbagRequest", method=RequestMethod.POST)
	public void goshopbagRequest( @RequestParam(value="request") String requestCon,	@RequestParam(value="cart") String cartCode) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("request", requestCon);
		map.put("cart", cartCode);
		service.goOrderRequest(map);
	}
	
	//선택한 작품 개수 변화
	@ResponseBody
	@RequestMapping(value="/shopbagChangeCount", method=RequestMethod.POST)
	public void goshopbagPlusCount( @RequestParam(value="count") String changeCount, @RequestParam(value="cart") String cartCode	) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("count", changeCount);
		map.put("cart", cartCode);
		service.goArtCount(map);
	}
		
	//옵션 삭제
	@ResponseBody
	@RequestMapping(value="/shopbagDelete", method=RequestMethod.POST)
	public void goshopbagDelete( @RequestParam(value="cart") String cartCode) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cart", cartCode);
		service.deleteArt(map);
	}
	
	//선택 삭제
	@ResponseBody
	@RequestMapping(value="/deleteChoice")
	public void deleteChoice( @RequestParam(value="cart[]") String[] cartCheck, HttpServletRequest request) {
		service.deleteChoice(cartCheck);
	}
	
	//옵션 변경
	
	 @ResponseBody
	  @RequestMapping(value="/shopbagUpdateOption", method=RequestMethod.POST)
	  public void goshopbagUpdateOption( @RequestParam(value="optionCode[]") String[] optionCode,
			  @RequestParam(value="cart") String cartCode, @RequestParam(value="count") String count) { 
		 
		 HashMap<String, String> map = new HashMap<String, String>();
		 map.put("cart", cartCode);
		 map.put("count", count);
		 if(optionCode.length == 1) {
			 map.put("option", optionCode[0]);
		 }
		 if(optionCode.length == 2) {
			 map.put("option", optionCode[0]+","+optionCode[1]);
		 }
		 if(optionCode.length == 3) {
			 map.put("option", optionCode[0]+","+optionCode[1]+","+optionCode[2]);
		 }
		service.updateOption(map);
	 }
	 
}

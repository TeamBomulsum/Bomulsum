package com.web.bomulsum.user.order.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

			List<List<UserShopbagOptionVO>> list = new ArrayList<List<UserShopbagOptionVO>>();
			UserShopbagVO tempVO = shopbagInfo.get(i);
			String[] artOption= shopbagInfo.get(i).getArt_option_seq().split("#");

			//System.out.println("몇개의 옵션이 들어있는지"+artOption.length);
			int optionCount = 0;
			
			for(int j=0; j<artOption.length; j++) {
				List<UserShopbagOptionVO> optionList = new ArrayList<UserShopbagOptionVO>();
				String[] artOptionDetail = artOption[j].split(",");
				System.out.println(Arrays.toString(artOptionDetail));
			//	System.out.println("하나에 옵션이 몇개 있는지"+artOptionDetail.length);
				optionCount = artOptionDetail.length;
				for(int k=0; k<artOptionDetail.length; k++) {
					UserShopbagOptionVO vo = service.getOptionInfo(artOptionDetail[k]);
					optionList.add(vo);
				}
				list.add(optionList);
			}
		
			System.out.println(list);
			tempVO.setOptionArray(list);
			
			String[] photoArray = tempVO.getArt_photo().split(",");
			tempVO.setArt_photo(photoArray[0]);
			
			String[] countArray = tempVO.getArt_count().split(",");
			//System.out.println("카운트가 몇개인지"+countArray.length);
			tempVO.setArtCount(countArray);
		
			List<Map<String,Object>> totalOption = new ArrayList<Map<String,Object>>();
			/* Map<String,Object> optionMap = new HashMap<String,Object>(); */
			
			/*
			 * for(int z=0; z<countArray.length; z++) { optionMap.put("artCount",
			 * countArray[z]); }
			 */
			//여기 지금 수정
			int sum = 0;
			int totalSum = 0;
			//int[] totalPrice = new int[countArray.length];
			if(tempVO.getOptionArray().size() == 1) {
				Map<String,Object> optionMap = new HashMap<String,Object>();
				if(tempVO.getOptionArray().get(0).size() >0) {
					for(int k=0; k<tempVO.getOptionArray().get(0).size(); k++) {
						sum += tempVO.getOptionArray().get(0).get(k).getArt_option_price();
					}
				}
				totalSum = (tempVO.getArt_discount()+sum)*Integer.parseInt((tempVO.getArtCount()[0]));
				//totalPrice[0] = totalSum;
				//tempVO.setTotal_price(totalPrice);
				optionMap.put("totalSum", totalSum);
				optionMap.put("artCount", countArray[0]);
				optionMap.put("optionArray", list);
				totalOption.add(optionMap);
				
				System.out.println(optionMap);
				tempVO.setTotalOption(totalOption);
				
			}
			
			//옵션 한 세트 이상일 경우
			if(tempVO.getOptionArray().size()>1) {
				for(int z=0; z<countArray.length; z++) {
					Map<String,Object> optionMap = new HashMap<String,Object>();
					optionMap.put("artCount",countArray[z]);
					
					/* for(int x=0; x<tempVO.getOptionArray().size(); x++) { */
						for(int y=0; y<tempVO.getOptionArray().get(z).size(); y++) {
							sum += tempVO.getOptionArray().get(z).get(y).getArt_option_price();
						/* } */
						totalSum = (tempVO.getArt_discount()+sum) * Integer.parseInt(tempVO.getArtCount()[z]);
						//totalPrice[x] = totalSum;
						optionMap.put("totalSum", totalSum);
						
						sum=0;
						totalSum=0;
					}
					optionMap.put("optionArray", list);
					totalOption.add(optionMap);
				}
			}
			//옵션 한 세트 선택한 경우 - 이거 사용
 /*			int sum = 0;
			int totalSum = 0;
			int[] totalPrice = new int[countArray.length];
			if(tempVO.getOptionArray().size() == 1) {
				if(tempVO.getOptionArray().get(0).size() >0) {
					for(int k=0; k<tempVO.getOptionArray().get(0).size(); k++) {
						sum += tempVO.getOptionArray().get(0).get(k).getArt_option_price();
					}
				}
				totalSum = (tempVO.getArt_discount()+sum)*Integer.parseInt((tempVO.getArtCount()[0]));
				totalPrice[0] = totalSum;
				tempVO.setTotal_price(totalPrice);
			}
			
			//옵션 한 세트 이상일 경우
			if(tempVO.getOptionArray().size()>1) {
				if(tempVO.getOptionArray().get(0).size()>0) {
					for(int x=0; x<tempVO.getOptionArray().size(); x++) {
						for(int y=0; y<tempVO.getOptionArray().get(x).size(); y++) {
							sum += tempVO.getOptionArray().get(x).get(y).getArt_option_price();
						}
						totalSum = (tempVO.getArt_discount()+sum) * Integer.parseInt(tempVO.getArtCount()[x]);
						totalPrice[x] = totalSum;
						sum=0;
						totalSum=0;
					}
					tempVO.setTotal_price(totalPrice);
				}
			}*/
		/*	
			int optionSum = 0;
			int totalSum = 0;
			int count = 0;
			int[] totalPrice = new int[countArray.length];
			int range = optionCount*countArray.length;
			System.out.println("몇개인지 카운트"+ optionCount);
			
			for(int x=0; x<countArray.length; x++) {
				for(int y=0; y<range; y++) {
					count++;
					optionSum += tempVO.getOptionList().get(y).getArt_option_price();

				}
				totalSum = (optionSum+tempVO.getArt_discount())*Integer.parseInt(countArray[x]);
				totalPrice[x] = totalSum;
				optionSum = 0;
				totalSum = 0;
			}
			tempVO.setTotal_price(totalPrice);*/
			
		/*	Object object2 = tempVO.getArtCount();
			Object object3 = tempVO.getTotal_price();
			List<Object> objectList = new ArrayList<Object>();
			objectList.add(object2);
			objectList.add(object3);
			tempVO.setTotalOption(objectList);*/
			
/*			optionMap.put("optionArray", list);
			totalOption.add(optionMap);
			System.out.println(optionMap);
			tempVO.setTotalOption(totalOption);*/
			tempVO.setTotalOption(totalOption);
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
		
/*		List<UserShopbagOptionVO> optionList = service.getOptionInfo(artOption);
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
		System.out.println("modalInfo"+ modalInfo);*/
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

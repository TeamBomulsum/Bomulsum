package com.web.bomulsum.user.midas.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.manager.board.repository.MBoardListVO;
import com.web.bomulsum.user.midas.repository.UserMidasPagingVO;
import com.web.bomulsum.user.midas.repository.UserMidasVO;
import com.web.bomulsum.user.midas.service.UserMidasServiceImpl;

@Controller
@RequestMapping(value="/midas")
public class UserMidasController {

	@Autowired
	private UserMidasServiceImpl service;
	
	@RequestMapping(value="/class")
	public String midasHome() {
		return "/umidas/uMhome";
	}
	
	/*금손 클래스 카테고리별 리스트 보여주기*/
	@RequestMapping(value="/detail")
	public ModelAndView categoryList(String category) {
		ModelAndView mav = new ModelAndView();
		String[] categoryList = {"공예","요리","미술","플라워","뷰티","체험 및 기타"};
		List<String> list = new ArrayList<>(Arrays.asList(categoryList));
		list.remove(category);
		
		mav.addObject("categoryList", list);
		mav.setViewName("/umidas/umCategory");
		return mav;
		//return "/umidas/umCategory";
	}
	
	@ResponseBody
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public HashMap<String, Object> categoryInfo(String category, int page){
		UserMidasPagingVO vo = new UserMidasPagingVO();
		vo.setCategory(category);
		int totalCnt = service.getCategoryMidasCount(vo);
		
		int pageCnt = page;
		if(pageCnt == 1) {
			vo.setStartNum(1);
			vo.setEndNum(21);
		} else {
			vo.setStartNum(pageCnt+ (20*(pageCnt-1)));
			vo.setEndNum(pageCnt*21);
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<UserMidasVO> data = service.midasCategoryList(vo);
		//map.put("categoryList", list);
		map.put("totalCnt", totalCnt);
		map.put("startNum", vo.getStartNum());
		map.put("data", data);
		return map;
	}
	
	
	/*금손 클래스 지역별 리스트 보여주기*/
	@RequestMapping(value="/location")
	public String locationList(String location) {
		return "/umidas/umLocation";
	}
	
	@ResponseBody
	@RequestMapping(value="/lcinfo", method=RequestMethod.POST)
	public HashMap<String, Object> locationInfo(String location, int page){
		UserMidasPagingVO vo = new UserMidasPagingVO();
		vo.setLocation(location+'%');
		int totalCnt = service.getLocationMidasCount(vo);
		
		int pageCnt = page;
		if(pageCnt == 1) {
			vo.setStartNum(1);
			vo.setEndNum(21);
		} else {
			vo.setStartNum(pageCnt+ (20*(pageCnt-1)));
			vo.setEndNum(pageCnt*21);
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<UserMidasVO> data = service.midasLocationList(vo);
		//map.put("categoryList", list);
		map.put("totalCnt", totalCnt);
		map.put("startNum", vo.getStartNum());
		map.put("data", data);
		return map;
	}
	
	/*신규 클래스*/
	@RequestMapping(value="/new")
	public String newList() {
		return "/umidas/umNew";
	}
	
	@ResponseBody
	@RequestMapping(value="/ninfo", method=RequestMethod.POST)
	public HashMap<String, Object> newInfo(int page){
		UserMidasPagingVO vo = new UserMidasPagingVO();
		int totalCnt = service.getAllMidasCount(vo);
		
		int pageCnt = page;
		if(pageCnt == 1) {
			vo.setStartNum(1);
			vo.setEndNum(21);
		} else {
			vo.setStartNum(pageCnt+ (20*(pageCnt-1)));
			vo.setEndNum(pageCnt*21);
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<UserMidasVO> data = service.midasNewList(vo);
		//map.put("categoryList", list);
		map.put("totalCnt", totalCnt);
		map.put("startNum", vo.getStartNum());
		map.put("data", data);
		return map;
	}
	
	/*인기 클래스*/
	@RequestMapping(value="/pupular")
	public String popularList(String popular) {
		return "/umdias/umPopular";
	}
	
}

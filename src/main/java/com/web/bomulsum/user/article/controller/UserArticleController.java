package com.web.bomulsum.user.article.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserArticlePagingVO;
import com.web.bomulsum.user.article.service.UserArticleService;

@Controller
@RequestMapping(value="/category")
public class UserArticleController {
	
	@Autowired
	private UserArticleService service;
	
	@RequestMapping(value="/detail")
	public String categoryHome(String category) {
		return "/ucategory/ucategory";
	}
	
	@ResponseBody
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public HashMap<String, Object> categoryInfo(String category, int page) {
		UserArticlePagingVO vo = new UserArticlePagingVO();
		vo.setCategory(category);
		int totalCnt = service.getCategoryArticleCount(vo);
		
		int pageCnt = page;
		if(pageCnt == 1) {
			vo.setStartNum(1);
			vo.setEndNum(10);
		}else {
			vo.setStartNum(pageCnt + (9*(pageCnt-1)));
			vo.setEndNum(pageCnt*10);
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<UserArticleCategoryVO> data = service.getListForCategory(vo);
		map.put("totalCnt", totalCnt);
		map.put("startNum", vo.getStartNum());
		map.put("data", data);
		return map;
	}
	
}

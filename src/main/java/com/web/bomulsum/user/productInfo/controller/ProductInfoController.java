package com.web.bomulsum.user.productInfo.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.bomulsum.user.productInfo.repository.CommentVO;
import com.web.bomulsum.user.productInfo.repository.JoinVO;
import com.web.bomulsum.user.productInfo.repository.WriterVO;
import com.web.bomulsum.user.productInfo.service.ProductInfoService;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

@Controller
@RequestMapping(value="user")
public class ProductInfoController {
	
	@Autowired
	ProductInfoService service;
	
	@GetMapping("uProductInfo/{artCodeSeq}")
	public String ProductInfo(HttpServletRequest request, @PathVariable String artCodeSeq,Model model,WriterArtVO vo, @RequestParam String memberCode) {
		
		// 최근 본 리스트
		if(memberCode != null && !memberCode.equals("null")) {	
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("memberCode", memberCode);
			map.put("artCode", artCodeSeq);
			service.selectRecentyleView(map);
		}
		service.updateViewCount(artCodeSeq);
		
		HttpSession session = request.getSession();
		session.setAttribute("artCodeSeq", artCodeSeq);
		
		WriterArtVO artList = service.getListProductInfo(artCodeSeq);
		
		String writerCodeSeq = artList.getWriterCodeSeq();
		session.setAttribute("writerCodeSeq", writerCodeSeq);
		WriterVO writer = service.getWriterInfo(writerCodeSeq);
		List<WriterArtInfoDetailVO> artInfo = service.getListProductartInfoList(artCodeSeq);
		List<WriterArtOptionVO> artOption = service.getListProductInfoOption(artCodeSeq);
		
		String keyword = artList.getArtKeyword();
		String[] keywordSplit = keyword.split(",");
		String artPhoto = artList.getArtPhoto();
		String[] artPhotoSplit = artPhoto.split(",");
		
		if(memberCode == null) {
			JoinVO join = new JoinVO();
			join.setMemberCodeSeq("x");
		}
		
		HashSet<WriterArtOptionVO> hashList = new HashSet<WriterArtOptionVO>();
		List<WriterArtVO> otherArt = service.selectOherProduct(writerCodeSeq); 
		hashList.addAll(artOption);
		
		List<CommentVO> commentList = service.commentSelect(artCodeSeq);
		for(int i=0; i<commentList.size(); i++) {
			System.out.println(commentList.get(i));
		}
		model.addAttribute("commentList", commentList);
		model.addAttribute("artOther",otherArt);
		model.addAttribute("firstPhoto",artPhotoSplit[0]);
		model.addAttribute("artPhotoSplit", artPhotoSplit);
		model.addAttribute("keywordSplit", keywordSplit);
		model.addAttribute("otherArt", otherArt);
		model.addAttribute("writer",writer);
		model.addAttribute("artList",artList);
		model.addAttribute("artInfo",artInfo);
		model.addAttribute("artOption",hashList);
		return "/ushopbag/uProductInfo";
	}
	
	@GetMapping("commentUpdate")
	public @ResponseBody List<CommentVO> commentUpdate(Model model,
			@RequestParam(value="comment") String comment,
			@RequestParam(value="memberCode") String memberCode,
			@RequestParam(value="artCodeSeq") String artCodeSeq,
			@RequestParam(value="writerCodeSeq") String writerCodeSeq) {
		System.out.println("들어옴");
		System.out.println(comment + " , " + memberCode +","+writerCodeSeq);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("commentContent",comment);
		map.put("memberCodeSeq",memberCode);
		map.put("artCodeSeq",artCodeSeq);
		map.put("writerCodeSeq",writerCodeSeq);
		service.commentInsert(map);
		
		List<CommentVO> commentList = service.commentSelect(artCodeSeq);
		System.out.println(commentList);
		
		return commentList; 
	}
}

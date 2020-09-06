package com.web.bomulsum.user.productInfo.controller;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String ProductInfo(@PathVariable String artCodeSeq,Model model,WriterArtVO vo) {
		System.out.println("들어옴");
		WriterArtVO artList = service.getListProductInfo(artCodeSeq);
		
		String writerCodeSeq = artList.getWriterCodeSeq();
		System.out.println(writerCodeSeq);
		WriterVO writer = service.getWriterInfo(writerCodeSeq);
		List<WriterArtInfoDetailVO> artInfo = service.getListProductartInfoList(artCodeSeq);
		List<WriterArtOptionVO> artOption = service.getListProductInfoOption(artCodeSeq);
		
		String keyword = artList.getArtKeyword();
		String[] keywordSplit = keyword.split(",");
		String artPhoto = artList.getArtPhoto();
		String[] artPhotoSplit = artPhoto.split(",");
		
		HashSet<WriterArtOptionVO> hashList = new HashSet<WriterArtOptionVO>();
		
		hashList.addAll(artOption);
		
		model.addAttribute("firstPhoto",artPhotoSplit[0]);
		model.addAttribute("artPhotoSplit", artPhotoSplit);
		model.addAttribute("keywordSplit", keywordSplit);
		
		
		System.out.println(writer);
		System.out.println(artInfo);
		System.out.println(artOption);
		System.out.println(artList);
		
		
		model.addAttribute("writer",writer);
		model.addAttribute("artList",artList);
		model.addAttribute("artInfo",artInfo);
		model.addAttribute("artOption",hashList);
		return "/ushopbag/uProductInfo";
	}
}

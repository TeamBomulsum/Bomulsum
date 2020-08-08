package com.web.bomulsum.writer.art.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.service.WriterArtService;

@Controller
@RequestMapping(value = "/writer")
public class WriterArtController {
	
	@Autowired
	WriterArtService service;
	
	@GetMapping("/workRegister")
	public String workRegister() {
		return "/warticle/workRegister";
	} 
	
	/*
	 * workRegister.jsp ���� form �±��� ���� ��  "/artregister"
	 */ 
	@RequestMapping(value="/artregister")
	public ModelAndView insertArtwork(WriterArtVO vo, WriterArtInfoDetailVO vo1, WriterArtOptionVO vo2){	
		
		//��ǰ ���
		service.insertArt(vo);
		System.out.println(vo.toString());
		
		//��ǰ �ڵ� ��������
		String artCode = service.getArtCode(vo.getArtName());
		System.out.println(artCode);
	
		ModelAndView mav = new ModelAndView();
		//��ǰ�ڵ� ����
		vo1.setArtCode(artCode);
		System.out.println(vo1.getArtCode());
		vo2.setArtCodeSeq(artCode);
		System.out.println(vo2.getArtCodeSeq());

		//��ǰ �������� ���
//		service.insertArtInfoDetail(vo1);
		System.out.println(vo1.toString());
		vo2.setArtOptionSeq("rk");
		System.out.println(vo2.getArtOptionSeq());
		/*
		System.out.println(vo2.toStringCate());
		System.out.println(vo2.toStringName());
*/
		//��ǰ �ɼ� ���
		
//		service.insertArtOption(vo2);
		//System.out.println(vo2.toString());
	
		
	/*
		String category= vo2.toStringCate();
		String[] array = category.split(",");
		
		//���				
		for(int i=0;i<array.length;i++) {
		System.out.println(array[i]);
		}
	
		
		Map<String, Object> optionData = new HashMap<String, Object>();
		for(int i=0;i<array.length;i++) {
		optionData.put("category", array[i]);
		System.out.println(optionData);
		}*/
		
	//	optionData.put("artOptionCategory", vo2.getArtOptionCategory());
	//	optionData.put("artOptionNname", vo2.getArtOptionName());
	//	optionData.put("artOptionPrice", vo2.getArtOptionPrice());

		List<WriterArtOptionVO> optionList = new ArrayList<>();
	
		
		String seq = vo2.getArtCodeSeq();
		String[] optionCategoryArr = vo2.getArtOptionCategory().split(",");
		String[] optionNameArr = vo2.getArtOptionName().split(",");
		int index= 0;
		
		System.out.println("optionsplit :" + Arrays.toString(optionCategoryArr));
		System.out.println("namesplit :" + Arrays.toString(optionNameArr));
		
		for(String category : optionCategoryArr) {
			WriterArtOptionVO writerOptionVO = new WriterArtOptionVO();
			writerOptionVO.setArtCodeSeq(seq);
			writerOptionVO.setArtOptionCategory(category);
			StringBuffer string = new StringBuffer();
			string.append(optionNameArr[index++]);
			string.append(",");
			string.append(optionNameArr[index++]);
			string.append(",");
			string.append(optionNameArr[index++]);
			writerOptionVO.setArtOptionName(string.toString());
			
			optionList.add(writerOptionVO);
		}
		System.out.println(optionList);
		service.insertArtOptionl();
//[artOptionSeq=null, artCodeSeq=art_code_seq145, artOptionCategory=��,��,��, artOptionName=�̸�1,�̸�2,,�̸�3,,,�̸�4,,, artOptionPrice=900]

		mav.setViewName("redirect:/writer/workRegister.wdo"); 
		mav.addObject("check", 1); // ��� ���� ������ ��
		return mav;
	}

}

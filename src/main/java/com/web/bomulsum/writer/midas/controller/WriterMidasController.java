package com.web.bomulsum.writer.midas.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.midas.repository.WriterMidasVO;
import com.web.bomulsum.writer.midas.service.WriterMidasService;

@Controller
@RequestMapping(value="/writer")
public class WriterMidasController {

	
	@Autowired
	WriterMidasService service;
	
	private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //占쏙옙占쏙옙占쏙옙 占쏙옙占�
	
	@GetMapping("/midasRegister")
	public ModelAndView midas(ModelAndView mav) {
		mav.setViewName("/warticle/midasWorkRegister");
		return mav;	
	}
	
	@PostMapping("/midasClassRegister")
	public ModelAndView midasRegister(WriterMidasVO vo,ModelAndView mav,@RequestParam(value="orderPicture[]", required=false) List<MultipartFile> mf,
			 HttpServletRequest request) {
			System.out.println("midasRegister 들어옴");
			System.out.println(vo.getKeyword());
			
		//사진저장
				String result="";
				
				for (MultipartFile file : mf) {
					String originalfileName = file.getOriginalFilename();
					String saveFile = System.currentTimeMillis() + originalfileName;
					try {
						file.transferTo(new File(SAVE_PATH, saveFile));
					}catch(IllegalStateException e) { e.printStackTrace();}
					catch(IOException e) { e.printStackTrace();	}
					
					result += saveFile+",";
				}	
				System.out.println(vo.getEndTime().toString());
				vo.setOrderImg(result);
				HttpSession session =  request.getSession();
				WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");
				
				String seq = code.getWriterSeq();
				
				vo.setWriterCodeSeq(seq);
				
				System.out.println(session);
				
				System.out.println(vo.toString());

				service.midasRegister(vo);
				mav.setViewName("redirect:/writer/midasRegister.wdo"); 
				mav.addObject("check", 1); 
		
		return mav;
	}
	@PostMapping("/midasClassModify")
	public ModelAndView midasModify(WriterMidasVO vo,ModelAndView mav,@RequestParam(value="orderPicture[]", required=false) List<MultipartFile> mf,
			 HttpServletRequest request) {
			System.out.println("midasRegister 들어옴");
			System.out.println(vo.getKeyword());
			
		//사진저장
				String result="";
				
				for (MultipartFile file : mf) {
					String originalfileName = file.getOriginalFilename();
					String saveFile = System.currentTimeMillis() + originalfileName;
					try {
						file.transferTo(new File(SAVE_PATH, saveFile));
					}catch(IllegalStateException e) { e.printStackTrace();}
					catch(IOException e) { e.printStackTrace();	}
					
					result += saveFile+",";
				}	
				System.out.println(vo.getEndTime().toString());
				vo.setOrderImg(result);
				HttpSession session =  request.getSession();
				WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");
				
				String seq = code.getWriterSeq();
				
				vo.setWriterCodeSeq(seq);
				
				System.out.println(session);
				
				System.out.println(vo.toString());

				service.midasRegister(vo);
				mav.setViewName("redirect:/writer/classInfo.wdo"); 
				mav.addObject("check", 1); 
		
		return mav;
	}
	@GetMapping("classInfo")
	public ModelAndView classInfo(ModelAndView mav,HttpServletRequest request) {
		System.out.println("classInfo 들어옴");
		HttpSession session =  request.getSession();
		WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");
		String writerCodeSeq = code.getWriterSeq();
		List<WriterMidasVO> classList = service.getClassAllSelect(writerCodeSeq);
		
		mav.addObject("classList", classList);
		mav.setViewName("/warticle/classInfo");			
		
		return mav;
	}
	
	@GetMapping("classInfoArticle")
	public @ResponseBody WriterMidasVO classInfoOrderSeq(@RequestParam String orderSeq,Model model) {
		
		WriterMidasVO vo = service.getClassArticle(orderSeq);
		model.addAttribute("article",vo);
		System.out.println(orderSeq);
		System.out.println(vo);
		return vo;
	}

	
}



















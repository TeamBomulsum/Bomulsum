package com.web.bomulsum.writer.midas.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView midasRegister(ModelAndView mav,@RequestParam(value="orderPicture", required=false) List<MultipartFile> mf,
			 HttpServletRequest request,WriterMidasVO vo,WriterRegisterVO rvo) {
			System.out.println("midasRegister 들어옴");
			
		//사진저장
				String result="";
				
				for (MultipartFile file : mf) {
					String originalfileName = file.getOriginalFilename();
					String saveFile = System.currentTimeMillis() + originalfileName;
					try {
						file.transferTo(new File(SAVE_PATH, saveFile)); //占싱뱄옙占쏙옙1 SAVE_PATH占쏙옙 占쏙옙占쏙옙
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
	
	
}

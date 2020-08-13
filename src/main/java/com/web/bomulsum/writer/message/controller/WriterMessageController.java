package com.web.bomulsum.writer.message.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.message.repository.UserInsertChatVo;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.message.service.WriterMessageServiceImpl;

@Controller
@RequestMapping(value="/writer")
public class WriterMessageController {

	@Autowired
	private WriterMessageServiceImpl service;
	
	@RequestMapping(value="/message")
	public ModelAndView writeMessage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession();
		WriterRegisterVO vo = (WriterRegisterVO)session.getAttribute("writer_login");
		
		System.out.println("메시지 작가 코드 : " + vo.getWriterSeq());
		
		mav.addObject("testMember", service.testGetMember());
		mav.addObject("chatRoom", service.getChatRoom(vo.getWriterSeq()));
		mav.setViewName("/wmessage/messageList");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/message/insertChat")
	public void insertChat(@RequestParam String memberCode, HttpServletRequest request) {
		HttpSession session = request.getSession();
		WriterRegisterVO wvo = (WriterRegisterVO)session.getAttribute("writer_login");
		UserInsertChatVo vo = new UserInsertChatVo();
		vo.setMemberCode(memberCode);
		vo.setWriterCode(wvo.getWriterSeq());
		
		service.insertChatRoom(vo);
	}
	
	@ResponseBody
	@RequestMapping(value="/message/extiChat")
	public void deleteChat(@RequestParam(value="memberCode[]") String[] memberCode, @RequestParam String writerCode) {
		List<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
		for(int i=0; i<memberCode.length; i++) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("memberCode", memberCode[i]);
			map.put("writerCode", writerCode);
			list.add(map);
		}
		for(HashMap<String, String> m : list) {
			System.out.println(m.get("memberCode"));
			System.out.println(m.get("writerCode"));
		}
		service.exitChatRoom(list);
	}
	
}

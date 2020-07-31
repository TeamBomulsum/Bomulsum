package com.web.bomulsum.user.login.controller;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.service.MemberServiceImpl;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@RequestMapping(value = "/user")
public class UserLoginController {
	
	@Autowired
	MemberServiceImpl service;

	@GetMapping("/login")
	public String userLogin() {
		return "/ulogin/ulogin";
	}

	@GetMapping("/newAccount")
	public String userNewAccount() {
		return "/ulogin/unewAccount";
	}

	@GetMapping("/newAccountEmail")
	public String userNewAccountEmail() {
		return "/ulogin/unewAccountEmail";
	}

	@RequestMapping(value = "/smsCheck")
	public void sendSms(@RequestParam String msg, @RequestParam String receiver) {
		System.out.println(msg);
		System.out.println(receiver);

		String api_key = "NCSRZ9EUI4F5PIVX";
		String api_secret = "KANEQZYC68WB7STQ6PCEIYQDC3MYVP2N";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", receiver);
		params.put("from", "01036292628"); // 보낼 사람 전화번호
		params.put("type", "SMS");
		params.put("text", msg);
		params.put("app_version", "test app 1.2"); // application name and version

//	    try {
//	    	//send() 전송할지 말지.
//	      JSONObject obj = (JSONObject) coolsms.send(params);
//	      System.out.println(obj.toString());
//	    } catch (CoolsmsException e) {
//	      System.out.println(e.getMessage());
//	      System.out.println(e.getCode());
//	    }
	}
	
	@ResponseBody
	@RequestMapping(value="/insertUserData", method=RequestMethod.POST)
	public void insertVo(MemberVO vo) {
		service.insertMember(vo);
		System.out.println(vo.toString());
	}
	
	@RequestMapping(value="/successNewAccount")
	public String successNewAccount() {
		System.out.println("controller 진입!");
		return "/ulogin/usuccessNewAccountEmail";
	}
	
	
	@RequestMapping(value="/checkEmail", method=RequestMethod.GET)
	public @ResponseBody int checkEmail(@RequestParam String memberEmail){
		return service.checkEmail(memberEmail);
	}
	

}

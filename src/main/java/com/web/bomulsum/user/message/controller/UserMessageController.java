package com.web.bomulsum.user.message.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.message.repository.NodeDbVO;
import com.web.bomulsum.user.message.service.NodeDbServiceImpl;

@Controller
@RequestMapping(value="/user")
public class UserMessageController {
	
	@Autowired
	private NodeDbServiceImpl service;
	
	@GetMapping("/message")
	public ModelAndView nodeDb() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/umessageNalarm/uMessage");
		return mav;
	}
	
	@ResponseBody
	@GetMapping("/message/data")
	public List<NodeDbVO> sendData(){
		List<NodeDbVO> vo = service.getTable();
		return vo;
	}
	
	@RequestMapping(value="/postSubmit")
	public String postSubmit(HttpServletRequest request, HttpServletResponse response) {
	    try {
	        CloseableHttpClient httpclient = HttpClients.createDefault();
	        HttpPost httpPost = new HttpPost("http://localhost:82/bomulsum/user/node/database.do");
	        //전달하고자 하는 PARAMETER를 List객체에 담는다
	        List <NameValuePair> nvps = new ArrayList<NameValuePair>();
	        nvps.add(new BasicNameValuePair("param1", request.getParameter("param1")));
	        nvps.add(new BasicNameValuePair("param2", request.getParameter("param2")));
	        //UTF-8은 한글
	        httpPost.setEntity(new UrlEncodedFormEntity(nvps,"UTF-8"));
	        CloseableHttpResponse res = httpclient.execute(httpPost);
	        try {
	            System.out.println(res.getStatusLine());
	            //API서버로부터 받은 JSON 문자열 데이터
	            System.out.println(EntityUtils.toString(res.getEntity()));
	            HttpEntity entity = res.getEntity();
	            EntityUtils.consume(entity);
	        } finally {
	            res.close();
	        }  
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "/umyInfo/umessageNalarm/uMessage";
	}

	
}

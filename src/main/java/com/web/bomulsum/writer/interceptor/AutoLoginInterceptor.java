package com.web.bomulsum.writer.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.login.service.WriterRegisterService;

public class AutoLoginInterceptor extends HandlerInterceptorAdapter{

	@Autowired
	private WriterRegisterService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		// 1. 자동 로그인 쿠키가 있는지 확인.
		// -> 쿠키(loginCookie)의 존재 여부 확인.
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie != null) { // 자동 로그인을 했다면,
			// 2. DB에서 쿠키값과 일치하는 세션아이디를 가진 회원의 정보를 조회.
			WriterRegisterVO user = service.getUserWithSessionId(loginCookie.getValue());
			if(user != null) {
				session.setAttribute("writer_login", user);
			}
		}
		return true;
		
	}
}

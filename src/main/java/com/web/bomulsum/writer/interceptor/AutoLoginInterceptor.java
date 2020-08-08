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
		// 1. �ڵ� �α��� ��Ű�� �ִ��� Ȯ��.
		// -> ��Ű(loginCookie)�� ���� ���� Ȯ��.
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie != null) { // �ڵ� �α����� �ߴٸ�,
			// 2. DB���� ��Ű���� ��ġ�ϴ� ���Ǿ��̵� ���� ȸ���� ������ ��ȸ.
			WriterRegisterVO user = service.getUserWithSessionId(loginCookie.getValue());
			if(user != null) {
				session.setAttribute("writer_login", user);
			}
		}
		return true;
		
	}
}

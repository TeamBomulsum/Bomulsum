package com.web.bomulsum.writer.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("�α��� ���ͼ��� �ߵ�!");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("writer_login") == null) {
			System.out.println("ȸ�� ���� ����!");
			response.sendRedirect("/bomulsum/writer/login.wdo");
			return false;
		}
		
		return true;
	}
}

package com.film.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	/** Handler拦截器方法执行完 */
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object object, Exception exception)
			throws Exception {
		
	}

	/** 进入Handler拦截器方法 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object object, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		// 获取URL
		String url = request.getRequestURI();
		// 判断输入地址的URL，若包含common，就放行
		if(url.indexOf("common") > 0 || url.indexOf("adminCommon") > 0){
			return true;
		}
		
		// 然后再判断session是否存在这个对象
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null || session.getAttribute("admin")!= null || url.indexOf("frontInfo") > 0){
			return true;
		}
		
		// 如果还执行到这里就代表条件还不满足，所以需要进行跳转，跳转到登录页面
		if (url.indexOf("user") > 0) {
			request.getRequestDispatcher("/WEB-INF/front/user/loginUI.jsp").forward(request, response);
		}
		if (url.indexOf("admin") > 0) {
			request.getRequestDispatcher("/WEB-INF/behind/admin/loginUI.jsp").forward(request, response);
		}
		return false;
	}
}

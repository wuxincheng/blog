package com.wuxincheng.blog.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 访问拦截器
 * 
 * @author wuxincheng
 *
 */
public class RequestInterceptor implements HandlerInterceptor {

	private static Logger logger = LoggerFactory.getLogger(RequestInterceptor.class);
	
	private String mappingURL; // 利用正则映射到需要拦截的路径

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, 
			Object arg2, Exception arg3) throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		String url = request.getRequestURL().toString();
		String remoteAddress = request.getRemoteAddr();
		
		if (!(mappingURL == null || url.matches(mappingURL))) {
			return false;
        }
		
		// 1. 记录访问日志
		logger.info("访客：" + remoteAddress + "：" + url);
		
		// 2. 记录到数据库: ip / 时间 / url / 
		
		return true;
	}
	
	public void setMappingURL(String mappingURL) {
		this.mappingURL = mappingURL;
	}
	
}

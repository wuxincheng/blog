package com.wuxincheng.blog.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.blog.model.BlogInfo;
import com.wuxincheng.blog.model.Type;
import com.wuxincheng.blog.service.BlogInfoService;
import com.wuxincheng.blog.service.TypeService;
import com.wuxincheng.blog.util.Constants;
import com.wuxincheng.blog.util.Validation;

@Controller
@RequestMapping("/blog")
public class BlogInfoController {

	private static Logger logger = LoggerFactory.getLogger(BlogInfoController.class);
	
	@Resource private BlogInfoService blogInfoService;
	
	@Resource private TypeService typeService;
	
	@RequestMapping(value = "/list")
	public String list(Model model, HttpServletRequest request) {
		String rometeAddr = request.getRemoteAddr();
		logger.info("接收到请求的IP：" + rometeAddr);
		
		logger.info("查询所有博客信息");

		List<BlogInfo> blogInfos = blogInfoService.queryAll();
		
		List<Type> types = typeService.queryAll();
		
		model.addAttribute("blogInfos", blogInfos);
		
		request.getSession().setAttribute("types", types);
		
		model.addAttribute(Constants.TOP_NAV_FLAG, "index");
		
		return "index";
	}
	
	@RequestMapping(value = "/detail")
	public String detail(@RequestParam String blogId, Model model) {
		logger.info("查询博客详细信息");
		
		if (Validation.isBlank(blogId)) {
			return "404";
		}
		
		if (!Validation.isInt(blogId, "0+")) {
			return "404";
		}
		
		BlogInfo blogInfo = null;
		
		blogInfo = blogInfoService.queryByBlogId(blogId);

		if (null == blogInfo) {
			return "404";
		}
		
		// 更新博客访问量
		blogInfoService.updateReadCount(blogId);
		
		model.addAttribute("blogInfo", blogInfo);
		
		return "blog/detail";
	}
	
}

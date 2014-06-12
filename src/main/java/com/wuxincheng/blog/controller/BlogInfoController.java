package com.wuxincheng.blog.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		logger.info("查询所有博客信息");

		// TODO 分页显示Ajax请求
		List<BlogInfo> blogInfos = blogInfoService.queryAll();
		
		List<Type> types = typeService.queryAll();
		
		model.addAttribute("blogInfos", blogInfos);
		
		request.getSession().setAttribute("types", types);
		
		model.addAttribute(Constants.TOP_NAV_FLAG, "index");
		
		readList(request);
		
		return "index";
	}
	
	@RequestMapping(value = "/detail")
	public String detail(HttpServletRequest request, String blogId, Model model) {
		logger.info("查询博客详细信息，blogId=" + blogId);
		
		if (Validation.isBlank(blogId)) {
			return "404";
		}
		
		if (!Validation.isInt(blogId, "0+")) {
			return "404";
		}
		
		BlogInfo blogInfo = null;
		
		blogInfo = blogInfoService.queryByBlogId(blogId);

		if (null == blogInfo) {
			logger.warn("博客信息信息，blogId=" + blogId + "，已跳转到404页面");
			return "404";
		}
		
		// 更新博客访问量
		blogInfoService.updateReadCount(blogId);
		
		model.addAttribute("blogInfo", blogInfo);
		
		readList(request);
		
		return "blog/detail";
	}
	
	private void readList(HttpServletRequest request){
		// 阅读量排行前5
		@SuppressWarnings("unchecked")
		List<BlogInfo> topBlogInfos = (List<BlogInfo>) request.getSession().getAttribute("topBlogInfos");
		if (!(topBlogInfos != null && topBlogInfos.size() > 0)) {
			topBlogInfos = blogInfoService.queryRead("5", Constants.ORDER_BY_DESC);
			request.getSession().setAttribute("topBlogInfos", topBlogInfos);
		}
		
		// 阅读量排行前5
		@SuppressWarnings("unchecked")
		List<BlogInfo> footerBlogInfos = (List<BlogInfo>) request.getSession().getAttribute("footerBlogInfos");
		if (!(footerBlogInfos != null && footerBlogInfos.size() > 0)) {
			footerBlogInfos = blogInfoService.queryRead("5", Constants.ORDER_BY_ASC);
			request.getSession().setAttribute("footerBlogInfos", footerBlogInfos);
		}
	}
	
}

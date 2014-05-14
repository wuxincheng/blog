package com.wuxincheng.blog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 时间轴
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/times")
public class TimesController {
	
	private static Logger logger = LoggerFactory.getLogger(TimesController.class);

	@RequestMapping(value = "/")
	public String about(Model model) {
		logger.info("查询博客时间轴");
		
		return "menu/times";
	}
	
}

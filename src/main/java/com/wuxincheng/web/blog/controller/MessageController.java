package com.wuxincheng.web.blog.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.util.Constants;
import com.wuxincheng.web.blog.model.Message;
import com.wuxincheng.web.blog.model.User;
import com.wuxincheng.web.blog.service.MessageService;

/**
 * 用户留言
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {
	
	private static Logger logger = LoggerFactory.getLogger(MessageController.class);
	
	@Autowired MessageService messageService;
	
	@RequestMapping(value = "/")
	public String message(Model model) {
		// 其它参数设置
		model.addAttribute(Constants.TOP_NAV_FLAG, "message");
		
		return "message";
	}
	
	@RequestMapping(value = "/doUserMsg")
	public String doUserMsg(@RequestParam String msgTitle, @RequestParam String msgContent, 
			HttpServletRequest request, Model model) {
		logger.info("处理用户留言数据");
		String defaultPage = "user/main_msg";
		
		if (null == msgTitle || "".equals(msgTitle) || msgContent == null || "".equals(msgContent)) {
			model.addAttribute("errorMsg", "留言标题和内容都不能为空");
			return defaultPage;
		}
		
		User user = (User)request.getSession().getAttribute("sessionUser");
		String username = user.getLogiName();
		
		Message message = new Message();
		message.setMsgId(messageService.queryMaxId());
		message.setMsgTitle(msgTitle);
		message.setMsgContent(msgContent);
		message.setState("0");
		message.setUsername(username);
		
		messageService.insert(message);
		
		model.addAttribute("successMsg", "留言已经提交");
		
		model.addAttribute("mainMsg", 1);
		
		return defaultPage;
	}
	
}

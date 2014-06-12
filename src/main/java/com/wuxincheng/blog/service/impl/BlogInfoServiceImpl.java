package com.wuxincheng.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.blog.dao.BlogInfoDao;
import com.wuxincheng.blog.model.BlogInfo;
import com.wuxincheng.blog.service.BlogInfoService;
import com.wuxincheng.blog.util.Constants;
import com.wuxincheng.blog.util.Validation;

/**
 * 博客信息
 * 
 * @author wuxincheng
 *
 */
@Service("blogInfoService")
public class BlogInfoServiceImpl implements BlogInfoService {

	@Resource private BlogInfoDao blogInfoDao;
	
	@Override
	public List<BlogInfo> queryAll() {
		return blogInfoDao.queryAll();
	}
	
	@Override
	public BlogInfo queryByBlogId(String blogId) {
		return blogInfoDao.queryByBlogId(blogId);
	}

	@Override
	public void updateReadCount(String blogId) {
		blogInfoDao.updateReadCount(blogId);
	}

	@Override
	public List<BlogInfo> queryRead(String line, String orderby) {
		// 判断是否为正整数, 如果是则返回空
		if (!Validation.isInt(line, "+")) {
			return null;
		}
		
		Integer intLine = Integer.parseInt(line);
		
		if (Constants.ORDER_BY_DESC.equals(orderby)) {
			return blogInfoDao.queryTopRead(intLine);
		} else if (Constants.ORDER_BY_ASC.equals(orderby)) {
			return blogInfoDao.queryFooterRead(intLine);
		} else {
			return null;
		}
	}

}

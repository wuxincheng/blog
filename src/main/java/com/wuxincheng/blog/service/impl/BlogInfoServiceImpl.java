package com.wuxincheng.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.blog.dao.BlogInfoDao;
import com.wuxincheng.blog.model.BlogInfo;
import com.wuxincheng.blog.service.BlogInfoService;

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

}

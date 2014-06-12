package com.wuxincheng.blog.service;

import java.util.List;

import com.wuxincheng.blog.model.BlogInfo;

/**
 * 博客信息Service接口
 * 
 * @author wuxincheng
 *
 */
public interface BlogInfoService {

	/**
	 * 查询博客信息
	 * 
	 * @return
	 */
	public abstract List<BlogInfo> queryAll();
	
	/**
	 * 根据主键查询
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract BlogInfo queryByBlogId(String blogId);

	/**
	 * 更新博客访问量
	 */
	public abstract void updateReadCount(String blogId);
	
	/**
	 * 查询阅读
	 * 
	 * @param line
	 * @param orderby
	 * @return
	 */
	public abstract List<BlogInfo> queryRead(String line, String orderby);
	
}

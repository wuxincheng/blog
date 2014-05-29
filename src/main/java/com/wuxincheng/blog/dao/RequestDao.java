package com.wuxincheng.blog.dao;

import com.wuxincheng.blog.model.Request;

public interface RequestDao {

	/**
	 * 增加
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void insert(Request request);
	
}

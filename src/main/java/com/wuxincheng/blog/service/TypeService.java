package com.wuxincheng.blog.service;

import java.util.List;

import com.wuxincheng.blog.model.Type;

public interface TypeService {

	/**
	 * 查询博客信息
	 * 
	 * @return
	 */
	public abstract List<Type> queryAll();
	
}

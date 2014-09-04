package com.wuxincheng.admins.dao;

import com.wuxincheng.admins.model.Request;

public interface RequestDao {

	/**
	 * 增加
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void insert(Request request);
	
}

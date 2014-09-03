package com.wuxincheng.comm.dao;

import com.wuxincheng.comm.model.Request;

public interface RequestDao {

	/**
	 * 增加
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void insert(Request request);
	
}

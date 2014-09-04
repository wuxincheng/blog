package com.wuxincheng.web.blog.dao;

import com.wuxincheng.web.blog.model.Message;

/**
 * 用户留言
 * 
 * @author wuxincheng
 *
 */
public interface MessageDao {

	/**
	 * 增加
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void insert(Message message);
	
	/**
	 * 查询最大ID值
	 * 
	 * @return
	 */
	public abstract Integer queryMaxId();
	
}

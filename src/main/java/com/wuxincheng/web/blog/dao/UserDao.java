package com.wuxincheng.web.blog.dao;

import com.wuxincheng.web.blog.model.User;

/**
 * 用户信息Dao接口
 * 
 * @author wuxincheng
 *
 */
public interface UserDao {

	/**
	 * 查询
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract User query(User user);
	
	/**
	 * 增加
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void insert(User user);
	
	/**
	 * 更新
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void update(User user);
	
	/**
	 * 更新
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract void modifyPwd(User user);
	
}

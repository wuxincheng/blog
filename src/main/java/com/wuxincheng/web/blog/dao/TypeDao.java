package com.wuxincheng.web.blog.dao;

import java.util.List;

import com.wuxincheng.web.blog.model.Type;

/**
 * 类型接口
 * 
 * @author wuxincheng
 *
 */
public interface TypeDao {

	/**
	 * 查询类型信息
	 * 
	 * @return
	 */
	public abstract List<Type> queryAll();
	
}

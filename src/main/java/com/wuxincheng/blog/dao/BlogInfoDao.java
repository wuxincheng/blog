package com.wuxincheng.blog.dao;

import java.util.List;

import com.wuxincheng.blog.model.BlogInfo;

/**
 * 博客信息Dao接口
 * 
 * @author wuxincheng
 *
 */
public interface BlogInfoDao {

	/**
	 * 查询所有文件信息
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
	 * 查询阅读排行
	 * 
	 * @param top
	 * @return
	 */
	public abstract List<BlogInfo> queryTopRead(Integer top);
	
	/**
	 * 其它阅读查询：查询阅读量最少的
	 * 
	 * @param top
	 * @return
	 */
	public abstract List<BlogInfo> queryFooterRead(Integer top);
	
}

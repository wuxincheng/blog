package com.wuxincheng.blog.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.blog.dao.BlogInfoDao;
import com.wuxincheng.blog.model.BlogInfo;

@Repository("blogInfoDao")
public class BlogInfoDaoImpl extends BaseDao implements BlogInfoDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<BlogInfo> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("BlogInfo.queryAll");
	}
	
	@Override
	public BlogInfo queryByBlogId(String blogId) {
		return (BlogInfo) this.getSqlMapClientTemplate().queryForObject("BlogInfo.queryByBlogId", blogId);
	}

	@Override
	public void updateReadCount(String blogId) {
		this.getSqlMapClientTemplate().update("BlogInfo.updateReadCount", blogId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BlogInfo> queryTopRead(Integer top) {
		return this.getSqlMapClientTemplate().queryForList("BlogInfo.queryTopRead");
	}

}

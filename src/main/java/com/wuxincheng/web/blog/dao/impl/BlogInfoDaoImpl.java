package com.wuxincheng.web.blog.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.wuxincheng.dao.BaseDao;
import com.wuxincheng.web.blog.dao.BlogInfoDao;
import com.wuxincheng.web.blog.model.BlogInfo;

@Repository("blogInfoDao")
public class BlogInfoDaoImpl extends BaseDao implements BlogInfoDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<BlogInfo> queryPager(Map<String, Object> params) {
		return this.getSqlMapClientTemplate().queryForList("BlogInfo.queryPager", params);
	}
	
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

	@SuppressWarnings("unchecked")
	@Override
	public List<BlogInfo> queryFooterRead(Integer top) {
		return this.getSqlMapClientTemplate().queryForList("BlogInfo.queryFooterRead");
	}
	
	@Override
	public Integer queryCount() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("BlogInfo.queryCount");
	}

}

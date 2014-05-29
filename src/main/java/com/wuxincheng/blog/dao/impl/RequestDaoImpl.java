package com.wuxincheng.blog.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.blog.dao.RequestDao;
import com.wuxincheng.blog.model.Request;

@Repository("requestDao")
public class RequestDaoImpl extends BaseDao implements RequestDao {

	@Override
	public void insert(Request request) {
		this.getSqlMapClientTemplate().insert("Request.insert", request);
	}

}

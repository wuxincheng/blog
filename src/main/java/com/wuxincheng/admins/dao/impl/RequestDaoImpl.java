package com.wuxincheng.admins.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.admins.dao.RequestDao;
import com.wuxincheng.admins.model.Request;
import com.wuxincheng.dao.BaseDao;

@Repository("requestDao")
public class RequestDaoImpl extends BaseDao implements RequestDao {

	@Override
	public void insert(Request request) {
		this.getSqlMapClientTemplate().insert("Request.insert", request);
	}

}

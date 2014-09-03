package com.wuxincheng.comm.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.comm.dao.BaseDao;
import com.wuxincheng.comm.dao.RequestDao;
import com.wuxincheng.comm.model.Request;

@Repository("requestDao")
public class RequestDaoImpl extends BaseDao implements RequestDao {

	@Override
	public void insert(Request request) {
		this.getSqlMapClientTemplate().insert("Request.insert", request);
	}

}

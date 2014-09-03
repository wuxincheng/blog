package com.wuxincheng.comm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.comm.dao.RequestDao;
import com.wuxincheng.comm.model.Request;
import com.wuxincheng.comm.service.RequestService;

@Service("requestService")
public class RequestServiceImpl implements RequestService {

	@Resource RequestDao requestDao;
	
	@Override
	public void insert(Request request) {
		requestDao.insert(request);
	}

}

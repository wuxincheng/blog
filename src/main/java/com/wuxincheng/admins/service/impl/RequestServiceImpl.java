package com.wuxincheng.admins.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.admins.dao.RequestDao;
import com.wuxincheng.admins.model.Request;
import com.wuxincheng.admins.service.RequestService;

@Service("requestService")
public class RequestServiceImpl implements RequestService {

	@Resource RequestDao requestDao;
	
	@Override
	public void insert(Request request) {
		requestDao.insert(request);
	}

}

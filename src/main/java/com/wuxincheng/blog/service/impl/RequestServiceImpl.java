package com.wuxincheng.blog.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.blog.dao.RequestDao;
import com.wuxincheng.blog.model.Request;
import com.wuxincheng.blog.service.RequestService;

@Service("requestService")
public class RequestServiceImpl implements RequestService {

	@Resource RequestDao requestDao;
	
	@Override
	public void insert(Request request) {
		requestDao.insert(request);
	}

}
